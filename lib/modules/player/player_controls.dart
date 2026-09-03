import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:media_kit/media_kit.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'package:melora/collections/melora_icons.dart';
import 'package:melora/collections/intents.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/extensions/duration.dart';
import 'package:melora/modules/player/use_progress.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/audio_player/querying_track_info.dart';
import 'package:melora/services/audio_player/audio_player.dart';
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
    final theme = Theme.of(context);

    final buttonSize =
        kIsMobile ? const ButtonSize(1.4) : const ButtonSize(1.2);
    final playButtonSize =
        kIsMobile ? const ButtonSize(2.0) : const ButtonSize(1.6);

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
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            children: [
              if (!compact)
                HookBuilder(
                  builder: (context) {
                    final mediaQuery = MediaQuery.sizeOf(context);

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

                    return Column(
                      children: [
                        Tooltip(
                          tooltip: TooltipContainer(
                            child: Text(context.l10n.slide_to_seek),
                          ).call,
                          child: SizedBox(
                            width: mediaQuery.xlAndUp ? 600 : 500,
                            child: Slider(
                              hintValue: SliderValue.single(bufferProgress),
                              value:
                                  SliderValue.single(progress.value.toDouble()),
                              onChanged: isFetchingActiveTrack
                                  ? null
                                  : (v) {
                                      progress.value = v.value;
                                    },
                              onChangeEnd: (value) async {
                                await audioPlayer.seek(
                                  Duration(
                                    seconds: (value.value * duration.inSeconds)
                                        .toInt(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                position.toHumanReadableString(),
                                style: theme.typography.xSmall.copyWith(
                                  color: theme.colorScheme.foreground.withValues(alpha: 0.65),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                duration > position
                                    ? "-${(duration - position).toHumanReadableString()}"
                                    : duration.toHumanReadableString(),
                                style: theme.typography.xSmall.copyWith(
                                  color: theme.colorScheme.foreground.withValues(alpha: 0.65),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                          color: shuffled ? theme.colorScheme.primary : null,
                          size: 22,
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
                  Tooltip(
                    tooltip: TooltipContainer(
                      child: Text(context.l10n.previous_track),
                    ).call,
                    child: IconButton.ghost(
                      size: buttonSize,
                      enabled: !isFetchingActiveTrack,
                      icon: const Icon(MeloraIcons.skipBack),
                      onPressed: audioPlayer.skipToPrevious,
                    ),
                  ),
                  Tooltip(
                    tooltip: TooltipContainer(
                      child: Text(
                        playing
                            ? context.l10n.pause_playback
                            : context.l10n.resume_playback,
                      ),
                    ).call,
                    child: IconButton.primary(
                      size: playButtonSize,
                      shape: ButtonShape.circle,
                      icon: isFetchingActiveTrack
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(),
                            )
                          : Icon(
                              playing ? MeloraIcons.pause : MeloraIcons.play,
                            ),
                      onPressed: isFetchingActiveTrack
                          ? null
                          : Actions.handler<PlayPauseIntent>(
                              context,
                              PlayPauseIntent(ref),
                            ),
                    ),
                  ),
                  Tooltip(
                    tooltip:
                        TooltipContainer(child: Text(context.l10n.next_track))
                            .call,
                    child: IconButton.ghost(
                      size: buttonSize,
                      icon: const Icon(MeloraIcons.skipForward),
                      onPressed:
                          isFetchingActiveTrack ? null : audioPlayer.skipToNext,
                    ),
                  ),
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
                              ? theme.colorScheme.primary
                              : null,
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
              const SizedBox(height: 5)
            ],
          ),
        ),
      ),
    );
  }
}
