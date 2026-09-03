import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script/values.dart';
import 'package:melora/models/metadata/metadata.dart';

class MetadataPluginSearchEndpoint {
  final Hetu hetu;
  MetadataPluginSearchEndpoint(this.hetu);

  HTInstance get hetuMetadataSearch =>
      (hetu.fetch("metadataPlugin") as HTInstance).memberGet("search")
          as HTInstance;

  List<String> get chips {
    return (hetuMetadataSearch.memberGet("chips") as List).cast<String>();
  }

  Future<MeloraSearchResponseObject> all(String query) async {
    if (query.isEmpty) {
      return MeloraSearchResponseObject(
        albums: [],
        artists: [],
        playlists: [],
        tracks: [],
      );
    }

    final raw = await hetuMetadataSearch.invoke(
      "all",
      positionalArgs: [query],
    ) as Map;

    return MeloraSearchResponseObject.fromJson(raw.cast<String, dynamic>());
  }

  Future<MeloraPaginationResponseObject<MeloraSimpleAlbumObject>> albums(
    String query, {
    int? limit,
    int? offset,
  }) async {
    if (query.isEmpty) {
      return MeloraPaginationResponseObject<MeloraSimpleAlbumObject>(
        items: [],
        total: 0,
        limit: limit ?? 20,
        hasMore: false,
        nextOffset: null,
      );
    }

    final raw = await hetuMetadataSearch.invoke(
      "albums",
      positionalArgs: [query],
      namedArgs: {
        "limit": limit,
        "offset": offset,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraSimpleAlbumObject>.fromJson(
      raw.cast<String, dynamic>(),
      (json) => MeloraSimpleAlbumObject.fromJson(json.cast<String, dynamic>()),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraFullArtistObject>> artists(
    String query, {
    int? limit,
    int? offset,
  }) async {
    if (query.isEmpty) {
      return MeloraPaginationResponseObject<MeloraFullArtistObject>(
        items: [],
        total: 0,
        limit: limit ?? 20,
        hasMore: false,
        nextOffset: null,
      );
    }

    final raw = await hetuMetadataSearch.invoke(
      "artists",
      positionalArgs: [query],
      namedArgs: {
        "limit": limit,
        "offset": offset,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraFullArtistObject>.fromJson(
      raw.cast<String, dynamic>(),
      (json) => MeloraFullArtistObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraSimplePlaylistObject>>
      playlists(
    String query, {
    int? limit,
    int? offset,
  }) async {
    if (query.isEmpty) {
      return MeloraPaginationResponseObject<MeloraSimplePlaylistObject>(
        items: [],
        total: 0,
        limit: limit ?? 20,
        hasMore: false,
        nextOffset: null,
      );
    }

    final raw = await hetuMetadataSearch.invoke(
      "playlists",
      positionalArgs: [query],
      namedArgs: {
        "limit": limit,
        "offset": offset,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<
        MeloraSimplePlaylistObject>.fromJson(
      raw.cast<String, dynamic>(),
      (json) => MeloraSimplePlaylistObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraFullTrackObject>> tracks(
    String query, {
    int? limit,
    int? offset,
  }) async {
    if (query.isEmpty) {
      return MeloraPaginationResponseObject<MeloraFullTrackObject>(
        items: [],
        total: 0,
        limit: limit ?? 20,
        hasMore: false,
        nextOffset: null,
      );
    }

    final raw = await hetuMetadataSearch.invoke(
      "tracks",
      positionalArgs: [query],
      namedArgs: {
        "limit": limit,
        "offset": offset,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraFullTrackObject>.fromJson(
      raw.cast<String, dynamic>(),
      (json) => MeloraFullTrackObject.fromJson(json.cast<String, dynamic>()),
    );
  }
}
