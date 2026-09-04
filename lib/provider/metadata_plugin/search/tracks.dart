import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/services/dio/dio.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:melora/provider/metadata_plugin/utils/common.dart';
import 'package:melora/provider/metadata_plugin/utils/family_paginated.dart';


class MetadataPluginSearchTracksNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<MeloraFullTrackObject,
        String> {
  MetadataPluginSearchTracksNotifier() : super();

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return MeloraPaginationResponseObject<MeloraFullTrackObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    try {
      final tracks = await (await metadataPlugin).search.tracks(
            arg,
            offset: offset,
            limit: limit,
          );

      if (tracks.items.isEmpty) {
        return _deezerSearchTracks(arg, limit);
      }

      return tracks;
    } on Exception {
      return _deezerSearchTracks(arg, limit);
    }
  }

  Future<MeloraPaginationResponseObject<MeloraFullTrackObject>>
      _deezerSearchTracks(String query, int limit) async {
    final dio = globalDio;
    final res = await dio.get(
      'https://api.deezer.com/search/track',
      queryParameters: {'q': query, 'limit': limit},
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
      limit: limit,
      hasMore: false,
      nextOffset: null,
    );
  }

  @override
  build(arg) async {
    ref.cacheFor();

    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginSearchTracksProvider =
    AutoDisposeAsyncNotifierProviderFamily<MetadataPluginSearchTracksNotifier,
        MeloraPaginationResponseObject<MeloraFullTrackObject>, String>(
  () => MetadataPluginSearchTracksNotifier(),
);
