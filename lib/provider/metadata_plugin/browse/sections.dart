import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/core/auth.dart';
import 'package:melora/provider/metadata_plugin/utils/paginated.dart';

class MetadataPluginBrowseSectionsNotifier
    extends PaginatedAsyncNotifier<MeloraBrowseSectionObject<Object>> {
  @override
  Future<MeloraPaginationResponseObject<MeloraBrowseSectionObject<Object>>>
      fetch(
    int offset,
    int limit,
  ) async {
    return await (await metadataPlugin).browse.sections(
          limit: limit,
          offset: offset,
        );
  }

  @override
  build() async {
    ref.watch(metadataPluginAuthenticatedProvider);
    return await fetch(0, 20);
  }
}

final metadataPluginBrowseSectionsProvider = AsyncNotifierProvider<
    MetadataPluginBrowseSectionsNotifier,
    MeloraPaginationResponseObject<MeloraBrowseSectionObject<Object>>>(
  () => MetadataPluginBrowseSectionsNotifier(),
);
