import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/metadata_plugin_provider.dart';
import 'package:melora/provider/metadata_plugin/utils/family_paginated.dart';

class MetadataPluginArtistAlbumNotifier
    extends FamilyPaginatedAsyncNotifier<MeloraSimpleAlbumObject, String> {
  @override
  Future<MeloraPaginationResponseObject<MeloraSimpleAlbumObject>> fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin).artist.albums(
          arg,
          limit: limit,
          offset: offset,
        );
  }

  @override
  build(arg) async {
    ref.watch(metadataPluginProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginArtistAlbumsProvider = AsyncNotifierProviderFamily<
    MetadataPluginArtistAlbumNotifier,
    MeloraPaginationResponseObject<MeloraSimpleAlbumObject>,
    String>(
  () => MetadataPluginArtistAlbumNotifier(),
);
