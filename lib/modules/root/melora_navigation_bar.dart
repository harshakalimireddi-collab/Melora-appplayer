import 'dart:math';
import 'dart:ui';

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

const _barBorder = Color(0x1FFFFFFF);
const _barBackground = Color(0xD90E0E12);
const _activeTabColor = Color(0xFFFFFFFF);
const _inactiveTabColor = Color(0x73FFFFFF);

final navigationPanelHeight = StateProvider<double>((ref) => 50);

class MeloraNavigationBar extends HookConsumerWidget {
  const MeloraNavigationBar({
    super.key,
  });

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

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: panelHeight,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
          child: Container(
            decoration: const BoxDecoration(
              color: _barBackground,
              border: Border(
                top: BorderSide(
                  color: _barBorder,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < navbarTileList.length; i++)
                  Expanded(
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        context.navigateTo(navbarTileList[i].route);
                      },
                      child: Center(
                        child: Badge(
                          isLabelVisible:
                              navbarTileList[i].id == "library" && downloadCount > 0,
                          label: Text(downloadCount.toString()),
                          child: Icon(
                            navbarTileList[i].icon,
                            size: 24,
                            color: selectedIndex == i
                                ? _activeTabColor
                                : _inactiveTabColor,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
