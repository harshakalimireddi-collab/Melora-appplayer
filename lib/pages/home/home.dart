import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/models/database/database.dart';
import 'package:melora/modules/connect/connect_device.dart';
import 'package:melora/modules/home/sections/featured.dart';
import 'package:melora/modules/home/sections/sections.dart';
import 'package:melora/modules/home/sections/new_releases.dart';
import 'package:melora/modules/home/sections/recent.dart';
import 'package:melora/components/titlebar/titlebar.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/provider/user_preferences/user_preferences_provider.dart';
import 'package:melora/utils/platform.dart';

@RoutePage()
class HomePage extends HookConsumerWidget {
  static const name = "home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final controller = useScrollController();
    final mediaQuery = MediaQuery.of(context);
    final layoutMode =
        ref.watch(userPreferencesProvider.select((s) => s.layoutMode));

    return SafeArea(
        bottom: false,
        child: Scaffold(
          headers: [
            if (kTitlebarVisible) const TitleBar(height: 30),
          ],
          child: Stack(
            children: [
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                height: 240,
                child: IgnorePointer(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x2E7C3AED),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              CustomScrollView(
                controller: controller,
                slivers: [
                  if (mediaQuery.smAndDown || layoutMode == LayoutMode.compact)
                    SliverAppBar(
                      floating: true,
                      title: const Text(
                        "Melora",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.8,
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      foregroundColor: theme.colorScheme.foreground,
                      actions: [
                        const ConnectDeviceButton(),
                        const Gap(8),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.08),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton.ghost(
                            icon: const Icon(MeloraIcons.settings, size: 20),
                            onPressed: () {
                              context.navigateTo(const SettingsRoute());
                            },
                          ),
                        ),
                        const Gap(14),
                      ],
                    )
              else if (kIsMacOS)
                const SliverGap(10),
              const SliverGap(10),
              SliverList.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return switch (index) {
                    // 0 => const HomeGenresSection(),
                    0 => const HomeRecentlyPlayedSection(),
                    1 => const HomeFeaturedSection(),
                    // 3 => const HomePageFriendsSection(),
                    _ => const HomeNewReleasesSection()
                  };
                },
              ),
              const SliverSafeArea(sliver: HomePageBrowseSection()),
            ],
          ),
        ],
      ),
    ));
  }
}
