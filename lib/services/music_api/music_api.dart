import 'package:dio/dio.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/services/dio/dio.dart';
import 'package:melora/services/logger/logger.dart';

class MusicApiResult {
  final String id;
  final String title;
  final String img;

  const MusicApiResult({
    required this.id,
    required this.title,
    required this.img,
  });

  factory MusicApiResult.fromJson(Map<String, dynamic> json) {
    return MusicApiResult(
      id: json['id'] as String,
      title: json['title'] as String,
      img: json['img'] as String? ?? '',
    );
  }
}

class MusicApiSearchResponse {
  final int status;
  final List<MusicApiResult> results;
  final String message;

  const MusicApiSearchResponse({
    required this.status,
    required this.results,
    required this.message,
  });

  factory MusicApiSearchResponse.fromJson(Map<String, dynamic> json) {
    return MusicApiSearchResponse(
      status: json['status'] as int,
      results: (json['response'] as List<dynamic>?)
              ?.map((e) => MusicApiResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      message: json['message'] as String? ?? '',
    );
  }
}

class MusicApiFetchResponse {
  final int status;
  final String url;
  final String message;

  const MusicApiFetchResponse({
    required this.status,
    required this.url,
    required this.message,
  });

  factory MusicApiFetchResponse.fromJson(Map<String, dynamic> json) {
    return MusicApiFetchResponse(
      status: json['status'] as int,
      url: json['response'] as String,
      message: json['message'] as String? ?? '',
    );
  }
}

class MusicApiLyricsResponse {
  final int status;
  final String html;
  final String message;

  const MusicApiLyricsResponse({
    required this.status,
    required this.html,
    required this.message,
  });

  factory MusicApiLyricsResponse.fromJson(Map<String, dynamic> json) {
    return MusicApiLyricsResponse(
      status: json['status'] as int,
      html: json['response'] as String? ?? '',
      message: json['message'] as String? ?? '',
    );
  }
}

enum MusicApiSearchEngine {
  gaama('gaama'),
  seevn('seevn'),
  hunjama('hunjama'),
  mtmusic('mtmusic'),
  wunk('wunk');

  final String value;
  const MusicApiSearchEngine(this.value);
}

class MusicApiService {
  static const _baseUrl = 'https://musicapi.x007.workers.dev';

  final Dio _dio;

  MusicApiService({Dio? dio}) : _dio = dio ?? globalDio;

  Future<MusicApiSearchResponse> search(
    String query, {
    MusicApiSearchEngine engine = MusicApiSearchEngine.gaama,
  }) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/search',
        queryParameters: {
          'q': query,
          'searchEngine': engine.value,
        },
        options: Options(
          responseType: ResponseType.json,
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode != 200) {
        throw MusicApiException(
          'Search failed with status ${response.statusCode}',
        );
      }

      return MusicApiSearchResponse.fromJson(response.data);
    } on DioException catch (e) {
      AppLogger.reportError(e, StackTrace.current);
      throw MusicApiException('Search request failed: ${e.message}');
    }
  }

  Future<MusicApiFetchResponse> fetch(String id) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/fetch',
        queryParameters: {'id': id},
        options: Options(
          responseType: ResponseType.json,
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode != 200) {
        throw MusicApiException(
          'Fetch failed with status ${response.statusCode}',
        );
      }

      return MusicApiFetchResponse.fromJson(response.data);
    } on DioException catch (e) {
      AppLogger.reportError(e, StackTrace.current);
      throw MusicApiException('Fetch request failed: ${e.message}');
    }
  }

  Future<MusicApiLyricsResponse> getLyrics(String id) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/lyrics',
        queryParameters: {'id': id},
        options: Options(
          responseType: ResponseType.json,
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode != 200) {
        throw MusicApiException(
          'Lyrics fetch failed with status ${response.statusCode}',
        );
      }

      return MusicApiLyricsResponse.fromJson(response.data);
    } on DioException catch (e) {
      AppLogger.reportError(e, StackTrace.current);
      throw MusicApiException('Lyrics request failed: ${e.message}');
    }
  }

  MeloraAudioSourceMatchObject toAudioSourceMatch(MusicApiResult result) {
    return MeloraAudioSourceMatchObject(
      id: result.id,
      title: result.title,
      artists: [],
      duration: Duration.zero,
      thumbnail: result.img.isNotEmpty ? result.img : null,
      externalUri: '$_baseUrl/fetch?id=${result.id}',
    );
  }

  Future<List<MeloraAudioSourceStreamObject>> getStreams(
    MeloraAudioSourceMatchObject match,
  ) async {
    final fetchResult = await fetch(match.id);

    if (fetchResult.status != 200 || fetchResult.url.isEmpty) {
      throw MusicApiException('Failed to get stream URL');
    }

    final url = fetchResult.url;
    final isM3u8 = url.endsWith('.m3u8') || url.contains('.m3u8?');

    return [
      MeloraAudioSourceStreamObject(
        url: url,
        container: isM3u8 ? 'mp4' : 'mp4',
        type: MeloraMediaCompressionType.lossy,
        codec: 'aac',
        bitrate: 320000,
      ),
    ];
  }

  Future<List<MeloraAudioSourceMatchObject>> matchTrack(
    MeloraFullTrackObject track, {
    MusicApiSearchEngine engine = MusicApiSearchEngine.gaama,
  }) async {
    final query = '${track.name} ${track.artists.map((a) => a.name).join(' ')}';
    final searchResult = await search(query, engine: engine);

    return searchResult.results
        .map((result) => toAudioSourceMatch(result))
        .toList();
  }
}

class MusicApiException implements Exception {
  final String message;
  const MusicApiException(this.message);

  @override
  String toString() => 'MusicApiException: $message';
}
