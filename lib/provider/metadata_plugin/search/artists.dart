import 'package:hooks_riverpod/hooks_riverpod.dart';
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

    final res = await (await metadataPlugin).search.artists(
          arg,
          offset: offset,
          limit: limit,
        );

    return res;
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
