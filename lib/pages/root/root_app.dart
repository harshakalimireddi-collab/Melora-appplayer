import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter_extension.dart';
import 'package:melora/hooks/configurators/use_check_yt_dlp_installed.dart';
import 'package:melora/modules/root/bottom_player.dart';
import 'package:melora/modules/root/sidebar/sidebar.dart';
import 'package:melora/modules/root/melora_navigation_bar.dart';
import 'package:melora/hooks/configurators/use_endless_playback.dart';
import 'package:melora/modules/root/use_global_subscriptions.dart';
import 'package:melora/provider/glance/glance.dart';
import 'package:melora/theme/melora_theme.dart';

@RoutePage()
class RootAppPage extends HookConsumerWidget {
  const RootAppPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    ref.listen(glanceProvider, (_, __) {});
    useGlobalSubscriptions(ref);
    useEndlessPlayback(ref);
    useCheckYtDlpInstalled(ref);

    useEffect(() {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          statusBarColor: MeloraColors.bg,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: MeloraColors.surface0,
        ),
      );
      return null;
    }, const []);

    return MediaQuery.removeViewInsets(
      context: context,
      removeBottom: true,
      child: SafeArea(
        top: false,
        child: ColoredBox(
          // Obsidian base coat — no giant radial blob
          color: MeloraColors.bg,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            footers: const [
              BottomPlayer(),
              MeloraNavigationBar(),
            ],
            floatingFooter: true,
            child: Sidebar(
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  padding: MediaQuery.paddingOf(context)
                      .copyWith(bottom: 100 * context.theme.scaling),
                ),
                child: const AutoRouter(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
