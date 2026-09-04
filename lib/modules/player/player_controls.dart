import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:media_kit/media_kit.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'package:melora/collections/melora_icons.dart';
import 'package:melora/collections/intents.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/extensions/duration.dart';
import 'package:melora/modules/player/use_progress.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/audio_player/querying_track_info.dart';
import 'package:melora/services/audio_player/audio_player.dart';
import 'package:melora/theme/melora_theme.dart';
import 'package:melora/utils/platform.dart';

class PlayerControls extends HookConsumerWidget {
  final PaletteGenerator? palette;
  final bool compact;

  const PlayerControls({
    this.palette,
    this.compact = false,
    super.key,
  });

  static FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context, ref) {
    final shortcuts = useMemoized(
        () => {
              const SingleActivator(LogicalKeyboardKey.arrowRight):
                  SeekIntent(ref, true),
              const SingleActivator(LogicalKeyboardKey.arrowLeft):
                  SeekIntent(ref, false),
            },
        [ref]);
    final actions = useMemoized(
        () => {
              SeekIntent: SeekAction(),
            },
        []);
    final isFetchingActiveTrack = ref.watch(queryingTrackInfoProvider);

    final playing =
        useStream(audioPlayer.playingStream).data ?? audioPlayer.isPlaying;
    final buttonSize =
        kIsMobile ? const ButtonSize(1.4) : const ButtonSize(1.1);
    final playButtonSize =
        kIsMobile ? const ButtonSize(2.0) : const ButtonSize(1.5);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (focusNode.canRequestFocus) {
          focusNode.requestFocus();
        }
      },
      child: FocusableActionDetector(
        focusNode: focusNode,
        shortcuts: shortcuts,
        actions: actions,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 580),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ── Buttons Row (Top) ──────────────────────────────────
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Shuffle
                  Consumer(builder: (context, ref, _) {
                    final shuffled = ref
                        .watch(audioPlayerProvider.select((s) => s.shuffled));
                    return Tooltip(
                      tooltip: TooltipContainer(
                        child: Text(
                          shuffled
                              ? context.l10n.unshuffle_playlist
                              : context.l10n.shuffle_playlist,
                        ),
                      ).call,
                      child: IconButton(
                        size: buttonSize,
                        icon: Icon(
                          MeloraIcons.shuffle,
                          color: shuffled
                              ? MeloraColors.accentSoft
                              : MeloraColors.textSecondary,
                          size: 18,
                        ),
                        variance: shuffled
                            ? ButtonVariance.secondary
                            : ButtonVariance.ghost,
                        onPressed: isFetchingActiveTrack
                            ? null
                            : () {
                                if (shuffled) {
                                  audioPlayer.setShuffle(false);
                                } else {
                                  audioPlayer.setShuffle(true);
                                }
                              },
                      ),
                    );
                  }),
                  const SizedBox(width: 6),
                  // Previous
                  Tooltip(
                    tooltip: TooltipContainer(
                      child: Text(context.l10n.previous_track),
                    ).call,
                    child: IconButton.ghost(
                      size: buttonSize,
                      enabled: !isFetchingActiveTrack,
                      icon: const Icon(
                        MeloraIcons.skipBack,
                        size: 20,
                        color: MeloraColors.textPrimary,
                      ),
                      onPressed: audioPlayer.skipToPrevious,
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Play / Pause (Center circular button)
                  Tooltip(
                    tooltip: TooltipContainer(
                      child: Text(
                        playing
                            ? context.l10n.pause_playback
                            : context.l10n.resume_playback,
                      ),
                    ).call,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x337C5CFC),
                            blurRadius: 12,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: IconButton.primary(
                        size: playButtonSize,
                        shape: ButtonShape.circle,
                        icon: isFetchingActiveTrack
                            ? const SizedBox(
                                height: 18,
                                width: 18,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              )
                            : Icon(
                                playing
                                    ? MeloraIcons.pause
                                    : MeloraIcons.play,
                                size: 18,
                                color: Colors.white,
                              ),
                        onPressed: isFetchingActiveTrack
                            ? null
                            : Actions.handler<PlayPauseIntent>(
                                context,
                                PlayPauseIntent(ref),
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Next
                  Tooltip(
                    tooltip: TooltipContainer(
                      child: Text(context.l10n.next_track),
                    ).call,
                    child: IconButton.ghost(
                      size: buttonSize,
                      icon: const Icon(
                        MeloraIcons.skipForward,
                        size: 20,
                        color: MeloraColors.textPrimary,
                      ),
                      onPressed:
                          isFetchingActiveTrack ? null : audioPlayer.skipToNext,
                    ),
                  ),
                  const SizedBox(width: 6),
                  // Repeat
                  Consumer(builder: (context, ref, _) {
                    final loopMode = ref
                        .watch(audioPlayerProvider.select((s) => s.loopMode));

                    return Tooltip(
                      tooltip: TooltipContainer(
                        child: Text(
                          loopMode == PlaylistMode.single
                              ? context.l10n.loop_track
                              : loopMode == PlaylistMode.loop
                                  ? context.l10n.repeat_playlist
                                  : "",
                        ),
                      ).call,
                      child: IconButton(
                        size: buttonSize,
                        icon: Icon(
                          loopMode == PlaylistMode.single
                              ? MeloraIcons.repeatOne
                              : MeloraIcons.repeat,
                          color: loopMode != PlaylistMode.none
                              ? MeloraColors.accentSoft
                              : MeloraColors.textSecondary,
                          size: 18,
                        ),
                        variance: loopMode == PlaylistMode.single ||
                                loopMode == PlaylistMode.loop
                            ? ButtonVariance.secondary
                            : ButtonVariance.ghost,
                        onPressed: isFetchingActiveTrack
                            ? null
                            : () async {
                                await audioPlayer.setLoopMode(
                                  switch (loopMode) {
                                    PlaylistMode.loop => PlaylistMode.single,
                                    PlaylistMode.single => PlaylistMode.none,
                                    PlaylistMode.none => PlaylistMode.loop,
                                  },
                                );
                              },
                      ),
                    );
                  }),
                ],
              ),

              // ── Progress Bar Row (Bottom) ──────────────────────────
              if (!compact)
                HookBuilder(
                  builder: (context) {
                    final (
                      :bufferProgress,
                      :duration,
                      :position,
                      :progressStatic
                    ) = useProgress(ref);

                    final progress = useState<num>(
                      useMemoized(() => progressStatic, []),
                    );

                    useEffect(() {
                      progress.value = progressStatic;
                      return null;
                    }, [progressStatic]);

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Text(
                            position.toHumanReadableString(),
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: MeloraColors.textTertiary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Tooltip(
                              tooltip: TooltipContainer(
                                child: Text(context.l10n.slide_to_seek),
                              ).call,
                              child: Slider(
                                hintValue: SliderValue.single(bufferProgress),
                                value: SliderValue.single(
                                    progress.value.toDouble()),
                                onChanged: isFetchingActiveTrack
                                    ? null
                                    : (v) {
                                        progress.value = v.value;
                                      },
                                onChangeEnd: (value) async {
                                  await audioPlayer.seek(
                                    Duration(
                                      seconds:
                                          (value.value * duration.inSeconds)
                                              .toInt(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            duration > position
                                ? "-${(duration - position).toHumanReadableString()}"
                                : duration.toHumanReadableString(),
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: MeloraColors.textTertiary,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
