import 'package:auto_route/auto_route.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:melora/collections/assets.gen.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/components/image/universal_image.dart';
import 'package:melora/components/links/artist_link.dart';
import 'package:melora/components/links/link_text.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/theme/melora_theme.dart';

class PlayerTrackDetails extends HookConsumerWidget {
  final Color? color;
  final MeloraTrackObject? track;
  const PlayerTrackDetails({super.key, this.color, this.track});

  @override
  Widget build(BuildContext context, ref) {
    final mediaQuery = MediaQuery.of(context);
    final playback = ref.watch(audioPlayerProvider);

    return Row(
      children: [
        if (playback.activeTrack != null)
          Container(
            margin: const EdgeInsets.only(left: 14, right: 12),
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: MeloraRadius.smBr,
              boxShadow: const [
                BoxShadow(
                  color: Color(0x40000000),
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: MeloraRadius.smBr,
              child: UniversalImage(
                path: (track?.album.images)
                    .asUrlString(placeholder: ImagePlaceholder.albumArt),
                placeholder: Assets.images.albumPlaceholder.path,
                fit: BoxFit.cover,
              ),
            ),
          ),
        if (mediaQuery.mdAndDown)
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  playback.activeTrack?.name ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: MeloraTextStyle.trackTitle.copyWith(
                    color: color ?? MeloraColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  playback.activeTrack?.artists.asString() ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: MeloraTextStyle.trackArtist.copyWith(
                    color:
                        (color ?? MeloraColors.textSecondary).withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ),
        if (mediaQuery.lgAndUp)
          Flexible(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinkText(
                  playback.activeTrack?.name ?? '',
                  TrackRoute(trackId: playback.activeTrack?.id ?? ''),
                  push: true,
                  overflow: TextOverflow.ellipsis,
                  style: MeloraTextStyle.trackTitle.copyWith(color: color),
                ),
                const SizedBox(height: 1),
                ArtistLink(
                  artists: playback.activeTrack?.artists ?? [],
                  onRouteChange: (route) {
                    context.router.navigateNamed(route);
                  },
                  onOverflowArtistClick: () =>
                      context.navigateTo(TrackRoute(trackId: track!.id)),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
