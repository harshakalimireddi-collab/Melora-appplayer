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
import 'package:melora/extensions/context.dart';
import 'package:melora/provider/user_preferences/user_preferences_provider.dart';
import 'package:melora/utils/platform.dart';
import 'package:melora/theme/melora_theme.dart';

@RoutePage()
class HomePage extends HookConsumerWidget {
  static const name = "home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final controller = useScrollController();
    final mediaQuery = MediaQuery.of(context);
    final layoutMode =
        ref.watch(userPreferencesProvider.select((s) => s.layoutMode));

    // Greeting based on time of day
    final hour = DateTime.now().hour;
    final greeting = hour < 12
        ? 'Good morning'
        : hour < 17
            ? 'Good afternoon'
            : 'Good evening';

    return SafeArea(
      bottom: false,
      child: ColoredBox(
        color: MeloraColors.bg,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (kTitlebarVisible) const TitleBar(height: 30),

            // ── Top bar (mobile) ─────────────────────────────
            if (mediaQuery.smAndDown || layoutMode == LayoutMode.compact)
              _HomeTopBar(
                greeting: greeting,
                onSettings: () => context.navigateTo(const SettingsRoute()),
              ),

            // ── Main scrollable content ───────────────────────
            Expanded(
              child: CustomScrollView(
                controller: controller,
                slivers: [
                  // Desktop greeting header
                  if (mediaQuery.lgAndUp && layoutMode != LayoutMode.compact)
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(28, 28, 28, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              greeting,
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: MeloraColors.textSecondary,
                                letterSpacing: 0.2,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'Music, in its purest form.',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.8,
                                color: MeloraColors.textPrimary,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              'Discover something worth listening to.',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: MeloraColors.textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  else
                    const SliverGap(12),

                  // Sections
                  SliverList.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return switch (index) {
                        0 => const HomeRecentlyPlayedSection(),
                        1 => const HomeFeaturedSection(),
                        _ => const HomeNewReleasesSection(),
                      };
                    },
                  ),
                  const SliverSafeArea(sliver: HomePageBrowseSection()),
                  const SliverGap(32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeTopBar extends StatelessWidget {
  final String greeting;
  final VoidCallback onSettings;

  const _HomeTopBar({
    required this.greeting,
    required this.onSettings,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                greeting,
                style: const TextStyle(
                  fontSize: 12,
                  color: MeloraColors.textSecondary,
                ),
              ),
              const Text(
                'Melora',
                style: MeloraTextStyle.brand,
              ),
            ],
          ),
          const Spacer(),
          const ConnectDeviceButton(),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: onSettings,
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: MeloraColors.glass10,
                borderRadius: MeloraRadius.smBr,
              ),
              child: const Icon(
                MeloraIcons.settings,
                size: 18,
                color: MeloraColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
