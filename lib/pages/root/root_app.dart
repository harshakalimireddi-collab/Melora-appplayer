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

@RoutePage()
class RootAppPage extends HookConsumerWidget {
  const RootAppPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final backgroundColor = Theme.of(context).colorScheme.background;
    final brightness = Theme.of(context).brightness;

    ref.listen(glanceProvider, (_, __) {});

    useGlobalSubscriptions(ref);
    useEndlessPlayback(ref);
    useCheckYtDlpInstalled(ref);

    useEffect(() {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarColor: backgroundColor, // status bar color
          statusBarIconBrightness: brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark,
        ),
      );
      return null;
    }, [backgroundColor, brightness]);

    final scaffold = MediaQuery.removeViewInsets(
      context: context,
      removeBottom: true,
      child: SafeArea(
        top: false,
        child: Stack(
          children: [
            const Positioned.fill(
              child: IgnorePointer(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(0.6, -0.7),
                      radius: 1.2,
                      colors: [
                        Color(0x1F7C3AED),
                        Color(0x0F06B6D4),
                        Colors.transparent,
                      ],
                      stops: [0.0, 0.45, 1.0],
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
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
          ],
        ),
      ),
    );

    return scaffold;
  }
}
