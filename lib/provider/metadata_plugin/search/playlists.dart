import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/services/dio/dio.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:melora/provider/metadata_plugin/utils/common.dart';
import 'package:melora/provider/metadata_plugin/utils/family_paginated.dart';


class MetadataPluginSearchPlaylistsNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<MeloraSimplePlaylistObject,
        String> {
  MetadataPluginSearchPlaylistsNotifier() : super();

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return MeloraPaginationResponseObject<MeloraSimplePlaylistObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    try {
      final res = await (await metadataPlugin).search.playlists(
            arg,
            offset: offset,
            limit: limit,
          );

      if (res.items.isEmpty) {
        return _deezerSearchPlaylists(arg, limit);
      }

      return res;
    } on Exception {
      return _deezerSearchPlaylists(arg, limit);
    }
  }

  Future<MeloraPaginationResponseObject<MeloraSimplePlaylistObject>>
      _deezerSearchPlaylists(String query, int limit) async {
    final dio = globalDio;
    final res = await dio.get(
      'https://api.deezer.com/search/playlist',
      queryParameters: {'q': query, 'limit': limit},
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

final metadataPluginSearchPlaylistsProvider =
    AutoDisposeAsyncNotifierProviderFamily<
        MetadataPluginSearchPlaylistsNotifier,
        MeloraPaginationResponseObject<MeloraSimplePlaylistObject>,
        String>(
  () => MetadataPluginSearchPlaylistsNotifier(),
);
