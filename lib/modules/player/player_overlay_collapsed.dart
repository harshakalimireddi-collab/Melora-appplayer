import 'dart:ui';
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

const _white70 = Color(0xB3FFFFFF);
const _glassBorder = Color(0x26FFFFFF);
const _glassBackground = Color(0xD916161A);
const _glassShadow = Color(0x59000000);

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
      duration: const Duration(milliseconds: 250),
      child: canShow && shouldShow.value
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _glassBackground,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: _glassBorder,
                        width: 0.5,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: _glassShadow,
                          blurRadius: 18,
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
                                  onTap: () {
                                    panelController.open();
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.transparent,
                                    child: PlayerTrackDetails(
                                      track: playlist.activeTrack,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Consumer(
                                    builder: (context, ref, _) {
                                      return IconButton.ghost(
                                        size: const ButtonSize(1.3),
                                        icon: isFetchingActiveTrack
                                            ? const SizedBox(
                                                height: 18,
                                                width: 18,
                                                child: CircularProgressIndicator(),
                                              )
                                            : Icon(
                                                playing
                                                    ? MeloraIcons.pause
                                                    : MeloraIcons.play,
                                                color: Colors.white,
                                                size: 22,
                                              ),
                                        onPressed: Actions.handler<PlayPauseIntent>(
                                          context,
                                          PlayPauseIntent(ref),
                                        ),
                                      );
                                    },
                                  ),
                                  IconButton.ghost(
                                    size: const ButtonSize(1.3),
                                    icon: const Icon(
                                      MeloraIcons.skipForward,
                                      color: _white70,
                                      size: 22,
                                    ),
                                    onPressed: isFetchingActiveTrack
                                        ? null
                                        : audioPlayer.skipToNext,
                                  ),
                                  const SizedBox(width: 8),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Hairline progress bar
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            bottom: Radius.circular(16),
                          ),
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Container(
                                height: 2,
                                width: double.infinity,
                                color: const Color(0x1AFFFFFF),
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: 2,
                                  width: constraints.maxWidth *
                                      progressStatic.clamp(0.0, 1.0),
                                  color: _white70,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
