import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/services/dio/dio.dart';

final deezerSearchTracksProvider =
    FutureProvider.autoDispose.family<
        MeloraPaginationResponseObject<MeloraFullTrackObject>, String>((ref, query) async {
  if (query.isEmpty) {
    return MeloraPaginationResponseObject<MeloraFullTrackObject>(
      items: [],
      total: 0,
      limit: 20,
      hasMore: false,
      nextOffset: null,
    );
  }
  final dio = globalDio;
  final res = await dio.get(
    'https://api.deezer.com/search/track',
    queryParameters: {'q': query, 'limit': 20},
  );
  final data = res.data as Map<String, dynamic>;
  final list = data['data'] as List<dynamic>? ?? [];
  final items = list.map((e) {
    final map = e as Map<String, dynamic>;
    final album = map['album'] as Map<String, dynamic>? ?? {};
    final artist = map['artist'] as Map<String, dynamic>? ?? {};
    return MeloraFullTrackObject(
      id: 'dz:track:${map['id']}',
      name: map['title'] as String? ?? '',
      externalUri: map['link'] as String? ?? '',
      artists: [MeloraSimpleArtistObject(
        id: 'dz:artist:${artist['id']}',
        name: artist['name'] as String? ?? 'Unknown',
        externalUri: artist['link'] as String? ?? '',
        images: [MeloraImageObject(
          url: artist['picture'] as String? ?? '',
          height: 500,
          width: 500,
        )],
      )],
      album: MeloraSimpleAlbumObject(
        id: 'dz:album:${album['id']}',
        name: album['title'] as String? ?? '',
        albumType: MeloraAlbumType.album,
        externalUri: album['link'] as String? ?? '',
        artists: [MeloraSimpleArtistObject(
          id: 'dz:artist:${artist['id']}',
          name: artist['name'] as String? ?? 'Unknown',
          externalUri: artist['link'] as String? ?? '',
          images: [MeloraImageObject(
            url: artist['picture'] as String? ?? '',
            height: 500,
            width: 500,
          )],
        )],
        releaseDate: album['release_date'] as String? ?? '',
        images: [MeloraImageObject(
          url: album['cover'] as String? ?? '',
          height: 300,
          width: 300,
        )],
      ),
      durationMs: ((map['duration'] as int? ?? 0) * 1000),
      isrc: map['isrc'] as String? ?? '',
      explicit: map['explicit_lyrics'] as bool? ?? false,
    );
  }).toList();

  return MeloraPaginationResponseObject<MeloraFullTrackObject>(
    items: items,
    total: items.length,
    limit: 20,
    hasMore: false,
    nextOffset: null,
  );
});

final deezerSearchArtistsProvider =
    FutureProvider.autoDispose.family<
        MeloraPaginationResponseObject<MeloraFullArtistObject>, String>((ref, query) async {
  if (query.isEmpty) {
    return MeloraPaginationResponseObject<MeloraFullArtistObject>(
      items: [],
      total: 0,
      limit: 20,
      hasMore: false,
      nextOffset: null,
    );
  }
  final dio = globalDio;
  final res = await dio.get(
    'https://api.deezer.com/search/artist',
    queryParameters: {'q': query, 'limit': 20},
  );
  final data = res.data as Map<String, dynamic>;
  final list = data['data'] as List<dynamic>? ?? [];
  final items = list.map((e) {
    final map = e as Map<String, dynamic>;
    return MeloraFullArtistObject(
      id: 'dz:artist:${map['id']}',
      name: map['name'] as String? ?? 'Unknown',
      externalUri: map['link'] as String? ?? '',
      images: [MeloraImageObject(
        url: map['picture'] as String? ?? '',
        height: 500,
        width: 500,
      )],
      followers: map['nb_fan'] as int? ?? 0,
    );
  }).toList();

  return MeloraPaginationResponseObject<MeloraFullArtistObject>(
    items: items,
    total: items.length,
    limit: 20,
    hasMore: false,
    nextOffset: null,
  );
});

final deezerSearchAlbumsProvider =
    FutureProvider.autoDispose.family<
        MeloraPaginationResponseObject<MeloraSimpleAlbumObject>, String>((ref, query) async {
  if (query.isEmpty) {
    return MeloraPaginationResponseObject<MeloraSimpleAlbumObject>(
      items: [],
      total: 0,
      limit: 20,
      hasMore: false,
      nextOffset: null,
    );
  }
  final dio = globalDio;
  final res = await dio.get(
    'https://api.deezer.com/search/album',
    queryParameters: {'q': query, 'limit': 20},
  );
  final data = res.data as Map<String, dynamic>;
  final list = data['data'] as List<dynamic>? ?? [];
  final items = list.map((e) {
    final map = e as Map<String, dynamic>;
    final artist = map['artist'] as Map<String, dynamic>? ?? {};
    return MeloraSimpleAlbumObject(
      id: 'dz:album:${map['id']}',
      name: map['title'] as String? ?? '',
      albumType: MeloraAlbumType.album,
      externalUri: map['link'] as String? ?? '',
      artists: [MeloraSimpleArtistObject(
        id: 'dz:artist:${artist['id']}',
        name: artist['name'] as String? ?? 'Unknown',
        externalUri: artist['link'] as String? ?? '',
        images: [MeloraImageObject(
          url: artist['picture'] as String? ?? '',
          height: 500,
          width: 500,
        )],
      )],
      releaseDate: map['release_date'] as String? ?? '',
      images: [MeloraImageObject(
        url: map['cover'] as String? ?? '',
        height: 300,
        width: 300,
      )],
    );
  }).toList();

  return MeloraPaginationResponseObject<MeloraSimpleAlbumObject>(
    items: items,
    total: items.length,
    limit: 20,
    hasMore: false,
    nextOffset: null,
  );
});

final deezerSearchPlaylistsProvider =
    FutureProvider.autoDispose.family<
        MeloraPaginationResponseObject<MeloraSimplePlaylistObject>, String>((ref, query) async {
  if (query.isEmpty) {
    return MeloraPaginationResponseObject<MeloraSimplePlaylistObject>(
      items: [],
      total: 0,
      limit: 20,
      hasMore: false,
      nextOffset: null,
    );
  }
  final dio = globalDio;
  final res = await dio.get(
    'https://api.deezer.com/search/playlist',
    queryParameters: {'q': query, 'limit': 20},
  );
  final data = res.data as Map<String, dynamic>;
  final list = data['data'] as List<dynamic>? ?? [];
  final items = list.map((e) {
    final map = e as Map<String, dynamic>;
    final user = map['user'] as Map<String, dynamic>? ?? {};
    return MeloraSimplePlaylistObject(
      id: 'dz:playlist:${map['id']}',
      name: map['title'] as String? ?? '',
      description: map['description'] as String? ?? '',
      externalUri: map['link'] as String? ?? '',
      owner: MeloraUserObject(
        id: 'dz:user:${user['id']}',
        name: user['name'] as String? ?? 'Unknown',
        externalUri: user['link'] as String? ?? '',
        images: [MeloraImageObject(
          url: map['picture'] as String? ?? '',
          height: 300,
          width: 300,
        )],
      ),
      images: [MeloraImageObject(
        url: map['picture'] as String? ?? '',
        height: 300,
        width: 300,
      )],
    );
  }).toList();

  return MeloraPaginationResponseObject<MeloraSimplePlaylistObject>(
    items: items,
    total: items.length,
    limit: 20,
    hasMore: false,
    nextOffset: null,
  );
});

final deezerBrowseFeaturedProvider =
    FutureProvider<List<MeloraSimplePlaylistObject>>((ref) async {
  final dio = globalDio;
  final res = await dio.get('https://api.deezer.com/chart/0/playlists');
  final data = res.data as Map<String, dynamic>;
  final list = data['data'] as List<dynamic>? ?? [];
  return list.map((e) {
    final map = e as Map<String, dynamic>;
    final user = map['user'] as Map<String, dynamic>? ?? {};
    return MeloraSimplePlaylistObject(
      id: 'dz:playlist:${map['id']}',
      name: map['title'] as String? ?? '',
      description: map['description'] as String? ?? '',
      externalUri: map['link'] as String? ?? '',
      owner: MeloraUserObject(
        id: 'dz:user:${user['id']}',
        name: user['name'] as String? ?? 'Unknown',
        externalUri: user['link'] as String? ?? '',
        images: [MeloraImageObject(
          url: map['picture'] as String? ?? '',
          height: 300,
          width: 300,
        )],
      ),
      images: [MeloraImageObject(
        url: map['picture'] as String? ?? '',
        height: 300,
        width: 300,
      )],
    );
  }).toList();
});

final deezerBrowseNewReleasesProvider =
    FutureProvider<List<MeloraSimpleAlbumObject>>((ref) async {
  final dio = globalDio;
  final res = await dio.get('https://api.deezer.com/chart/0/albums');
  final data = res.data as Map<String, dynamic>;
  final list = data['data'] as List<dynamic>? ?? [];
  return list.map((e) {
    final map = e as Map<String, dynamic>;
    final artist = map['artist'] as Map<String, dynamic>? ?? {};
    return MeloraSimpleAlbumObject(
      id: 'dz:album:${map['id']}',
      name: map['title'] as String? ?? '',
      albumType: MeloraAlbumType.album,
      externalUri: map['link'] as String? ?? '',
      artists: [MeloraSimpleArtistObject(
        id: 'dz:artist:${artist['id']}',
        name: artist['name'] as String? ?? 'Unknown',
        externalUri: artist['link'] as String? ?? '',
        images: [MeloraImageObject(
          url: artist['picture'] as String? ?? '',
          height: 500,
          width: 500,
        )],
      )],
      releaseDate: map['release_date'] as String? ?? '',
      images: [MeloraImageObject(
        url: map['cover'] as String? ?? '',
        height: 300,
        width: 300,
      )],
    );
  }).toList();
});

final deezerBrowseRecentProvider =
    FutureProvider<List<MeloraSimpleAlbumObject>>((ref) async {
  final dio = globalDio;
  final res = await dio.get('https://api.deezer.com/chart/0/albums');
  final data = res.data as Map<String, dynamic>;
  final list = data['data'] as List<dynamic>? ?? [];
  return list.take(10).map((e) {
    final map = e as Map<String, dynamic>;
    final artist = map['artist'] as Map<String, dynamic>? ?? {};
    return MeloraSimpleAlbumObject(
      id: 'dz:album:${map['id']}',
      name: map['title'] as String? ?? '',
      albumType: MeloraAlbumType.album,
      externalUri: map['link'] as String? ?? '',
      artists: [MeloraSimpleArtistObject(
        id: 'dz:artist:${artist['id']}',
        name: artist['name'] as String? ?? 'Unknown',
        externalUri: artist['link'] as String? ?? '',
        images: [MeloraImageObject(
          url: artist['picture'] as String? ?? '',
          height: 500,
          width: 500,
        )],
      )],
      releaseDate: map['release_date'] as String? ?? '',
      images: [MeloraImageObject(
        url: map['cover'] as String? ?? '',
        height: 300,
        width: 300,
      )],
    );
  }).toList();
});
