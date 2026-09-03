import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:melora/collections/assets.gen.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/components/framework/app_pop_scope.dart';
import 'package:melora/components/heart_button/heart_button.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/modules/connect/connect_device.dart';
import 'package:melora/modules/player/player_actions.dart';
import 'package:melora/modules/player/player_controls.dart';
import 'package:melora/modules/player/volume_slider.dart';
import 'package:melora/components/dialogs/track_details_dialog.dart';
import 'package:melora/components/links/artist_link.dart';
import 'package:melora/components/titlebar/titlebar.dart';
import 'package:melora/components/image/universal_image.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/modules/root/melora_navigation_bar.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/metadata_plugin/audio_source/quality_label.dart';
import 'package:melora/provider/server/active_track_sources.dart';
import 'package:melora/provider/volume_provider.dart';

const _white70 = Color(0xB3FFFFFF);
const _white65 = Color(0xA6FFFFFF);
const _white35 = Color(0x59FFFFFF);
const _scrimTop = Color(0x80000000);
const _scrimMid = Color(0xB8000000);
const _scrimBottom = Color(0xEB000000);

class PlayerView extends HookConsumerWidget {
  final PanelController panelController;
  final ScrollController scrollController;
  const PlayerView({
    super.key,
    required this.panelController,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context, ref) {
    final sourcedCurrentTrack = ref.watch(activeTrackSourcesProvider);
    final currentActiveTrack =
        ref.watch(audioPlayerProvider.select((s) => s.activeTrack));
    final currentActiveTrackSource = sourcedCurrentTrack.asData?.value?.source;
    final isLocalTrack = currentActiveTrack is MeloraLocalTrackObject;
    final mediaQuery = MediaQuery.sizeOf(context);
    final qualityLabel = ref.watch(audioSourceQualityLabelProvider);

    final shouldHide = useState(true);

    ref.listen(navigationPanelHeight, (_, height) {
      shouldHide.value = height.ceil() == 50;
    });

    if (shouldHide.value) {
      return const SizedBox();
    }

    useEffect(() {
      if (mediaQuery.lgAndUp) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          panelController.close();
        });
      }
      return null;
    }, [mediaQuery.lgAndUp]);

    String albumArt = useMemoized(
      () => (currentActiveTrack?.album.images).asUrlString(
        placeholder: ImagePlaceholder.albumArt,
      ),
      [currentActiveTrack?.album.images],
    );

    useEffect(() {
      for (final renderView in WidgetsBinding.instance.renderViews) {
        renderView.automaticSystemUiAdjustment = false;
      }

      return () {
        for (final renderView in WidgetsBinding.instance.renderViews) {
          renderView.automaticSystemUiAdjustment = true;
        }
      };
    }, [panelController.isAttached && panelController.isPanelOpen]);

    return AppPopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        await panelController.close();
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        child: Stack(
          children: [
            // Layer 1: Ambient Backdrop Glow
            if (albumArt.isNotEmpty)
              Positioned.fill(
                child: Transform.scale(
                  scale: 1.35,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 55, sigmaY: 55),
                    child: UniversalImage(
                      path: albumArt,
                      placeholder: Assets.images.albumPlaceholder.path,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

            // Layer 2: Deep Dark Vignette for contrast
            Positioned.fill(
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      _scrimTop,
                      _scrimMid,
                      _scrimBottom,
                    ],
                  ),
                ),
              ),
            ),

            // Layer 3: Foreground Player UI
            Scaffold(
              backgroundColor: Colors.transparent,
              headers: [
                SafeArea(
                  bottom: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 8),
                      // iOS Pull-Down Handle Pill
                      Center(
                        child: Container(
                          width: 36,
                          height: 5,
                          decoration: BoxDecoration(
                            color: _white35,
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                        ),
                      ),
                      TitleBar(
                        surfaceOpacity: 0,
                        surfaceBlur: 0,
                        leading: [
                          IconButton.ghost(
                            size: const ButtonSize(1.2),
                            icon: const Icon(MeloraIcons.angleDown, color: _white70),
                            onPressed: panelController.close,
                          )
                        ],
                        trailing: [
                          if (!isLocalTrack)
                            Tooltip(
                              tooltip: TooltipContainer(
                                child: Text(context.l10n.details),
                              ).call,
                              child: IconButton.ghost(
                                size: const ButtonSize(1.2),
                                icon: const Icon(MeloraIcons.info, color: _white70),
                                onPressed: currentActiveTrackSource == null
                                    ? null
                                    : () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return TrackDetailsDialog(
                                              track: currentActiveTrack
                                                  as MeloraFullTrackObject,
                                            );
                                          },
                                        );
                                      },
                              ),
                            )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              child: SingleChildScrollView(
                controller: scrollController,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      // Elevated Artwork Card
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        constraints: BoxConstraints(
                          maxHeight: (mediaQuery.height * 0.38).clamp(240.0, 340.0),
                          maxWidth: (mediaQuery.height * 0.38).clamp(240.0, 340.0),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: const [
                            BoxShadow(
                              color: _scrimTop,
                              spreadRadius: 2,
                              blurRadius: 28,
                              offset: Offset(0, 14),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(22),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: UniversalImage(
                              path: albumArt,
                              placeholder: Assets.images.albumPlaceholder.path,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Track Info + Heart Button Row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    currentActiveTrack?.name ?? context.l10n.not_playing,
                                    style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.4,
                                      color: Colors.white,
                                    ),
                                    maxFontSize: 24,
                                    minFontSize: 18,
                                    maxLines: 1,
                                    textAlign: TextAlign.start,
                                  ),
                                  const SizedBox(height: 4),
                                  if (isLocalTrack)
                                    Text(
                                      currentActiveTrack.artists.asString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: _white65,
                                      ),
                                    )
                                  else
                                    ArtistLink(
                                      artists: currentActiveTrack?.artists ?? [],
                                      textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: _white65,
                                      ),
                                      onRouteChange: (route) {
                                        panelController.close();
                                        context.router.navigateNamed(route);
                                      },
                                      onOverflowArtistClick: () => context.navigateTo(
                                        TrackRoute(
                                          trackId: currentActiveTrack!.id,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            if (currentActiveTrack != null)
                              TrackHeartButton(
                                track: currentActiveTrack,
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

                      // iOS Controls (Scrubber + Playback triad)
                      const PlayerControls(),
                      const SizedBox(height: 16),

                      // Secondary Actions (Repeat / Sleep / Download)
                      const PlayerActions(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        showQueue: false,
                      ),
                      const SizedBox(height: 12),

                      // iOS Bottom Actions (Lyrics / AirPlay Connect / Queue)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton.ghost(
                              size: const ButtonSize(1.3),
                              icon: const Icon(
                                MeloraIcons.music,
                                size: 22,
                                color: _white70,
                              ),
                              onPressed: () {
                                context.pushRoute(const PlayerLyricsRoute());
                              },
                            ),
                            const ConnectDeviceButton(),
                            IconButton.ghost(
                              size: const ButtonSize(1.3),
                              icon: const Icon(
                                MeloraIcons.queue,
                                size: 22,
                                color: _white70,
                              ),
                              onPressed: () {
                                context.pushRoute(const PlayerQueueRoute());
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Volume Slider
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Consumer(builder: (context, ref, _) {
                          final volume = ref.watch(volumeProvider);
                          return VolumeSlider(
                            fullWidth: true,
                            value: volume,
                            onChanged: (value) {
                              ref.read(volumeProvider.notifier).setVolume(value);
                            },
                          );
                        }),
                      ),
                      const Gap(20),

                      // Quality Badge
                      OutlineBadge(
                        style: const ButtonStyle.outline(
                          size: ButtonSize.normal,
                          density: ButtonDensity.dense,
                          shape: ButtonShape.rectangle,
                        ).copyWith(
                          textStyle: (context, states, value) {
                            return value.copyWith(
                              fontWeight: FontWeight.w500,
                              color: _white70,
                            );
                          },
                        ),
                        leading: const Icon(
                          MeloraIcons.lightningOutlined,
                          color: _white70,
                        ),
                        child: Text(qualityLabel),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
