import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'package:melora/collections/side_bar_tiles.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/models/database/database.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/modules/root/sidebar/sidebar_footer.dart';
import 'package:melora/provider/user_preferences/user_preferences_provider.dart';
import 'package:melora/theme/melora_theme.dart';

class Sidebar extends HookConsumerWidget {
  final Widget child;

  const Sidebar({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.sizeOf(context);

    final layoutMode =
        ref.watch(userPreferencesProvider.select((s) => s.layoutMode));

    final sidebarTileList = useMemoized(
      () => getSidebarTileList(context.l10n),
      [context.l10n],
    );

    final sidebarLibraryTileList = useMemoized(
      () => getSidebarLibraryTileList(context.l10n),
      [context.l10n],
    );

    final router = context.watchRouter;

    if (layoutMode == LayoutMode.compact ||
        (mediaQuery.smAndDown && layoutMode == LayoutMode.adaptive)) {
      return child;
    }

    final isExpanded = mediaQuery.lgAndUp;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _MeloraSidebarPanel(
          isExpanded: isExpanded,
          sidebarTileList: sidebarTileList,
          sidebarLibraryTileList: sidebarLibraryTileList,
          router: router,
        ),
        // Subtle separator line
        Container(
          width: 0.5,
          color: MeloraColors.separator,
        ),
        Expanded(child: child),
      ],
    );
  }
}

class _MeloraSidebarPanel extends HookConsumerWidget {
  final bool isExpanded;
  final List<SideBarTiles> sidebarTileList;
  final List<SideBarTiles> sidebarLibraryTileList;
  final RoutingController router;

  const _MeloraSidebarPanel({
    required this.isExpanded,
    required this.sidebarTileList,
    required this.sidebarLibraryTileList,
    required this.router,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: isExpanded ? 220 : 60,
      color: MeloraColors.surface0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Brand logo ────────────────────────────────────
          Padding(
            padding: EdgeInsets.fromLTRB(
              isExpanded ? 18 : 10,
              24,
              isExpanded ? 18 : 10,
              20,
            ),
            child: isExpanded
                ? Row(
                    children: [
                      Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              MeloraColors.accent,
                              MeloraColors.aurora1,
                            ],
                          ),
                          borderRadius: MeloraRadius.xsBr,
                        ),
                        child: const Icon(
                          MeloraIcons.music,
                          size: 15,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Melora',
                        style: MeloraTextStyle.brand,
                      ),
                    ],
                  )
                : Center(
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            MeloraColors.accent,
                            MeloraColors.aurora1,
                          ],
                        ),
                        borderRadius: MeloraRadius.xsBr,
                      ),
                      child: const Icon(
                        MeloraIcons.music,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ),

          // ── Primary navigation ─────────────────────────────
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Discover section
                  for (final tile in sidebarTileList)
                    _buildNavItem(context, tile),

                  // Divider + Library label
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Container(
                      height: 0.5,
                      color: MeloraColors.separator,
                    ),
                  ),
                  if (isExpanded)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(19, 0, 19, 8),
                      child: Text(
                        'LIBRARY',
                        style: MeloraTextStyle.sectionLabel,
                      ),
                    ),

                  for (final tile in sidebarLibraryTileList)
                    _buildNavItem(context, tile),

                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),

          // ── Footer ────────────────────────────────────────
          Container(
            height: 0.5,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: MeloraColors.separator,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 120),
            child: _SidebarFooterSlim(isExpanded: isExpanded),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, SideBarTiles tile) {
    final isActive = router.currentPath.startsWith(tile.pathPrefix);

    if (!isExpanded) {
      return Tooltip(
        tooltip: TooltipContainer(child: Text(tile.title)).call,
        child: GestureDetector(
          onTap: () => context.navigateTo(tile.route),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 160),
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isActive ? MeloraColors.accentGlow : Colors.transparent,
              borderRadius: MeloraRadius.smBr,
            ),
            child: Icon(
              tile.icon,
              size: 18,
              color: isActive
                  ? MeloraColors.accentSoft
                  : MeloraColors.textSecondary,
            ),
          ),
        ),
      );
    }

    return MeloraNavPill(
      icon: tile.icon,
      label: tile.title,
      isActive: isActive,
      onTap: () => context.navigateTo(tile.route),
    );
  }
}

/// Slim footer with Downloads / Settings
class _SidebarFooterSlim extends HookConsumerWidget {
  final bool isExpanded;
  const _SidebarFooterSlim({required this.isExpanded});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = AutoRouter.of(context, watch: true);
    final isDownloads = router.topRoute.name == UserDownloadsRoute.name;

    if (!isExpanded) {
      return Column(
        children: [
          const SizedBox(height: 10),
          _iconBtn(
            context,
            MeloraIcons.download,
            isDownloads,
            () => context.navigateTo(const UserDownloadsRoute()),
            tooltip: 'Downloads',
          ),
          _iconBtn(
            context,
            MeloraIcons.settings,
            router.topRoute.name == SettingsRoute.name,
            () => context.navigateTo(const SettingsRoute()),
            tooltip: 'Settings',
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Column(
        children: [
          MeloraNavPill(
            icon: MeloraIcons.download,
            label: 'Downloads',
            isActive: isDownloads,
            onTap: () => context.navigateTo(const UserDownloadsRoute()),
          ),
          MeloraNavPill(
            icon: MeloraIcons.settings,
            label: 'Settings',
            isActive: router.topRoute.name == SettingsRoute.name,
            onTap: () => context.navigateTo(const SettingsRoute()),
          ),
        ],
      ),
    );
  }

  Widget _iconBtn(
    BuildContext context,
    IconData icon,
    bool active,
    VoidCallback onTap, {
    String? tooltip,
  }) {
    final btn = GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: active ? MeloraColors.accentGlow : Colors.transparent,
          borderRadius: MeloraRadius.smBr,
        ),
        child: Icon(
          icon,
          size: 18,
          color: active ? MeloraColors.accentSoft : MeloraColors.textSecondary,
        ),
      ),
    );

    if (tooltip != null) {
      return Tooltip(
        tooltip: TooltipContainer(child: Text(tooltip)).call,
        child: btn,
      );
    }
    return btn;
  }
}
