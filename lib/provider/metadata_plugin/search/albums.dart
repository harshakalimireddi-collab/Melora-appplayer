import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/services/dio/dio.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:melora/provider/metadata_plugin/utils/common.dart';
import 'package:melora/provider/metadata_plugin/utils/family_paginated.dart';


class MetadataPluginSearchAlbumsNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<MeloraSimpleAlbumObject,
        String> {
  MetadataPluginSearchAlbumsNotifier() : super();

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return MeloraPaginationResponseObject<MeloraSimpleAlbumObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    try {
      final res = await (await metadataPlugin).search.albums(
            arg,
            offset: offset,
            limit: limit,
          );

      if (res.items.isEmpty) {
        return _deezerSearchAlbums(arg, limit);
      }

      return res;
    } on Exception {
      return _deezerSearchAlbums(arg, limit);
    }
  }

  Future<MeloraPaginationResponseObject<MeloraSimpleAlbumObject>>
      _deezerSearchAlbums(String query, int limit) async {
    final dio = globalDio;
    final res = await dio.get(
      'https://api.deezer.com/search/album',
      queryParameters: {'q': query, 'limit': limit},
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

final metadataPluginSearchAlbumsProvider =
    AutoDisposeAsyncNotifierProviderFamily<MetadataPluginSearchAlbumsNotifier,
        MeloraPaginationResponseObject<MeloraSimpleAlbumObject>, String>(
  () => MetadataPluginSearchAlbumsNotifier(),
);
