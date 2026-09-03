import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart' show Badge;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'package:melora/collections/side_bar_tiles.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/models/database/database.dart';
import 'package:melora/provider/download_manager_provider.dart';
import 'package:melora/provider/user_preferences/user_preferences_provider.dart';
import 'package:melora/theme/melora_theme.dart';

final navigationPanelHeight = StateProvider<double>((ref) => 50);

class MeloraNavigationBar extends HookConsumerWidget {
  const MeloraNavigationBar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final mediaQuery = MediaQuery.of(context);

    final downloadCount = ref
        .watch(downloadManagerProvider)
        .where((e) =>
            e.status == DownloadStatus.downloading ||
            e.status == DownloadStatus.queued)
        .length;
    final layoutMode =
        ref.watch(userPreferencesProvider.select((s) => s.layoutMode));

    final navbarTileList = useMemoized(
      () => getNavbarTileList(context.l10n),
      [context.l10n],
    );

    final panelHeight = ref.watch(navigationPanelHeight);
    final router = context.watchRouter;

    final selectedIndex = max(
      0,
      navbarTileList.indexWhere(
        (e) => router.currentPath.startsWith(e.pathPrefix),
      ),
    );

    if (layoutMode == LayoutMode.extended ||
        (mediaQuery.mdAndUp && layoutMode == LayoutMode.adaptive) ||
        panelHeight < 10) {
      return const SizedBox();
    }

    return Container(
      height: panelHeight,
      decoration: const BoxDecoration(
        color: MeloraColors.surface0,
        border: Border(
          top: BorderSide(color: MeloraColors.separator, width: 0.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(navbarTileList.length, (i) {
          final tile = navbarTileList[i];
          final isActive = i == selectedIndex;
          return Expanded(
            child: GestureDetector(
              onTap: () => context.navigateTo(tile.route),
              behavior: HitTestBehavior.opaque,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Badge(
                    isLabelVisible:
                        tile.id == 'downloads' && downloadCount > 0,
                    label: Text(downloadCount.toString()),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 160),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: isActive
                            ? MeloraColors.accentGlow
                            : Colors.transparent,
                        borderRadius: MeloraRadius.smBr,
                      ),
                      child: Icon(
                        tile.icon,
                        size: 20,
                        color: isActive
                            ? MeloraColors.accentSoft
                            : MeloraColors.textSecondary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    tile.title,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: isActive
                          ? FontWeight.w600
                          : FontWeight.w400,
                      color: isActive
                          ? MeloraColors.accentSoft
                          : MeloraColors.textTertiary,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
