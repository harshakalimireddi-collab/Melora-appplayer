import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:melora/provider/metadata_plugin/utils/family_paginated.dart';
import 'package:melora/provider/metadata_plugin/utils/common.dart';

class MetadataPluginAlbumTracksNotifier
    extends AutoDisposeFamilyPaginatedAsyncNotifier<MeloraFullTrackObject,
        String> {
  MetadataPluginAlbumTracksNotifier() : super();

  @override
  fetch(offset, limit) async {
    final tracks = await (await metadataPlugin).album.tracks(
          arg,
          offset: offset,
          limit: limit,
        );

    return tracks;
  }

  @override
  build(arg) async {
    ref.cacheFor();

    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginAlbumTracksProvider =
    AutoDisposeAsyncNotifierProviderFamily<MetadataPluginAlbumTracksNotifier,
        MeloraPaginationResponseObject<MeloraFullTrackObject>, String>(
  () => MetadataPluginAlbumTracksNotifier(),
);
