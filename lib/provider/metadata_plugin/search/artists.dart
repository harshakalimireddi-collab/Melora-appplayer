import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/services/dio/dio.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:melora/provider/metadata_plugin/utils/common.dart';
import 'package:melora/provider/metadata_plugin/utils/family_paginated.dart';


class MetadataPluginSearchArtistsNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<MeloraFullArtistObject,
        String> {
  MetadataPluginSearchArtistsNotifier() : super();

  @override
  fetch(offset, limit) async {
    if (arg.isEmpty) {
      return MeloraPaginationResponseObject<MeloraFullArtistObject>(
        limit: limit,
        nextOffset: null,
        total: 0,
        items: [],
        hasMore: false,
      );
    }

    try {
      final res = await (await metadataPlugin).search.artists(
            arg,
            offset: offset,
            limit: limit,
          );

      if (res.items.isEmpty) {
        return _deezerSearchArtists(arg, limit);
      }

      return res;
    } on Exception {
      return _deezerSearchArtists(arg, limit);
    }
  }

  Future<MeloraPaginationResponseObject<MeloraFullArtistObject>>
      _deezerSearchArtists(String query, int limit) async {
    final dio = globalDio;
    final res = await dio.get(
      'https://api.deezer.com/search/artist',
      queryParameters: {'q': query, 'limit': limit},
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

final metadataPluginSearchArtistsProvider =
    AutoDisposeAsyncNotifierProviderFamily<MetadataPluginSearchArtistsNotifier,
        MeloraPaginationResponseObject<MeloraFullArtistObject>, String>(
  () => MetadataPluginSearchArtistsNotifier(),
);
