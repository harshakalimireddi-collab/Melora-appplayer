import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:melora/collections/intents.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/modules/player/player_track_details.dart';
import 'package:melora/modules/player/use_progress.dart';
import 'package:melora/modules/root/melora_navigation_bar.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/audio_player/querying_track_info.dart';
import 'package:melora/services/audio_player/audio_player.dart';
import 'package:melora/theme/melora_theme.dart';

class PlayerOverlayCollapsedSection extends HookConsumerWidget {
  final PanelController panelController;
  const PlayerOverlayCollapsedSection({
    super.key,
    required this.panelController,
  });

  @override
  Widget build(BuildContext context, ref) {
    final playlist = ref.watch(audioPlayerProvider);
    final canShow = playlist.activeTrack != null;
    final isFetchingActiveTrack = ref.watch(queryingTrackInfoProvider);
    final playing =
        useStream(audioPlayer.playingStream).data ?? audioPlayer.isPlaying;

    final shouldShow = useState(true);
    ref.listen(navigationPanelHeight, (_, height) {
      shouldShow.value = height.ceil() == 50;
    });

    final (:progressStatic, :duration, :position, :bufferProgress) =
        useProgress(ref);

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 220),
      child: canShow && shouldShow.value
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: MeloraColors.surface2,
                  borderRadius: MeloraRadius.mdBr,
                  border:
                      Border.all(color: MeloraColors.glassStroke, width: 0.5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x40000000),
                      blurRadius: 20,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () => panelController.open(),
                              child: Container(
                                width: double.infinity,
                                color: Colors.transparent,
                                child: PlayerTrackDetails(
                                  track: playlist.activeTrack,
                                  color: MeloraColors.textPrimary,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Consumer(
                                builder: (context, ref, _) {
                                  return GestureDetector(
                                    onTap: Actions.handler<PlayPauseIntent>(
                                      context,
                                      PlayPauseIntent(ref),
                                    ),
                                    child: Container(
                                      width: 38,
                                      height: 38,
                                      alignment: Alignment.center,
                                      child: isFetchingActiveTrack
                                          ? const SizedBox(
                                              height: 18,
                                              width: 18,
                                              child:
                                                  CircularProgressIndicator(),
                                            )
                                          : Icon(
                                              playing
                                                  ? MeloraIcons.pause
                                                  : MeloraIcons.play,
                                              color: MeloraColors.textPrimary,
                                              size: 20,
                                            ),
                                    ),
                                  );
                                },
                              ),
                              GestureDetector(
                                onTap: isFetchingActiveTrack
                                    ? null
                                    : audioPlayer.skipToNext,
                                child: Container(
                                  width: 38,
                                  height: 38,
                                  alignment: Alignment.center,
                                  child: Icon(
                                    MeloraIcons.skipForward,
                                    color: MeloraColors.textSecondary,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Hairline progress bar
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(MeloraRadius.md),
                      ),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            height: 2,
                            width: double.infinity,
                            color: MeloraColors.separator,
                            alignment: Alignment.centerLeft,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 2,
                              width: constraints.maxWidth *
                                  progressStatic.clamp(0.0, 1.0),
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    MeloraColors.accent,
                                    MeloraColors.accentSoft,
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
