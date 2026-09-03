import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter_extension.dart';

import 'package:melora/collections/assets.gen.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/models/database/database.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/modules/player/player_actions.dart';
import 'package:melora/modules/player/player_overlay.dart';
import 'package:melora/modules/player/player_track_details.dart';
import 'package:melora/modules/player/player_controls.dart';
import 'package:melora/modules/player/volume_slider.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/user_preferences/user_preferences_provider.dart';
import 'package:melora/provider/volume_provider.dart';
import 'package:melora/utils/platform.dart';
import 'package:melora/theme/melora_theme.dart';
import 'package:window_manager/window_manager.dart';

class BottomPlayer extends HookConsumerWidget {
  const BottomPlayer({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final playlist = ref.watch(audioPlayerProvider);
    final layoutMode =
        ref.watch(userPreferencesProvider.select((s) => s.layoutMode));
    final mediaQuery = MediaQuery.of(context);

    String albumArt = useMemoized(
      () => playlist.activeTrack?.album.images.isNotEmpty == true
          ? (playlist.activeTrack?.album.images).asUrlString(
              index: (playlist.activeTrack?.album.images.length ?? 1) - 1,
              placeholder: ImagePlaceholder.albumArt,
            )
          : Assets.images.albumPlaceholder.path,
      [playlist.activeTrack?.album.images],
    );

    if (layoutMode == LayoutMode.compact ||
        ((mediaQuery.mdAndDown) && layoutMode == LayoutMode.adaptive)) {
      return PlayerOverlay(albumArt: albumArt);
    }

    return Container(
      height: 72,
      decoration: const BoxDecoration(
        color: MeloraColors.surface0,
        border: Border(
          top: BorderSide(color: MeloraColors.separator, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          // ── Left: Track info ──────────────────────────────
          Expanded(
            child: PlayerTrackDetails(track: playlist.activeTrack),
          ),

          // ── Center: Controls ──────────────────────────────
          const Flexible(
            flex: 3,
            child: PlayerControls(),
          ),

          // ── Right: Actions + Volume ───────────────────────
          SizedBox(
            width: 240,
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PlayerActions(
                    extraActions: [
                      if (kIsDesktop)
                        _PlayerIconBtn(
                          icon: MeloraIcons.miniPlayer,
                          tooltip: context.l10n.mini_player,
                          onTap: () async {
                            final prevSize = await windowManager.getSize();
                            await windowManager.setMinimumSize(
                              const Size(300, 300),
                            );
                            await windowManager.setAlwaysOnTop(true);
                            if (!kIsLinux) {
                              await windowManager.setHasShadow(false);
                            }
                            await windowManager
                                .setAlignment(Alignment.topRight);
                            await windowManager.setSize(const Size(400, 500));
                            await Future.delayed(
                              const Duration(milliseconds: 100),
                              () async {
                                if (context.mounted) {
                                  context.navigateTo(
                                    MiniLyricsRoute(prevSize: prevSize),
                                  );
                                }
                              },
                            );
                          },
                        ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  // Volume
                  SizedBox(
                    width: 120,
                    child: Consumer(builder: (context, ref, _) {
                      final volume = ref.watch(volumeProvider);
                      return VolumeSlider(
                        fullWidth: true,
                        value: volume,
                        onChanged: (value) {
                          ref
                              .read(volumeProvider.notifier)
                              .setVolume(value);
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayerIconBtn extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  const _PlayerIconBtn({
    required this.icon,
    required this.tooltip,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      tooltip: TooltipContainer(child: Text(tooltip)).call,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: MeloraRadius.smBr,
          ),
          child: Icon(
            icon,
            size: 18,
            color: MeloraColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
