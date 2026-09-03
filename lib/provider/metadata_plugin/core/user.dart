import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/metadata_plugin/core/auth.dart';
import 'package:melora/provider/metadata_plugin/metadata_plugin_provider.dart';

final metadataPluginUserProvider = FutureProvider<MeloraUserObject?>(
  (ref) async {
    final metadataPlugin = await ref.watch(metadataPluginProvider.future);
    final authenticated =
        await ref.watch(metadataPluginAuthenticatedProvider.future);

    if (!authenticated || metadataPlugin == null) {
      return null;
    }
    return metadataPlugin.user.me();
  },
);
