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
            margin: const EdgeInsets.only(left: 10, right: 12),
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x40000000),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
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
                  playback.activeTrack?.name ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.2,
                    color: color ?? Colors.white,
                  ),
                ),
                const SizedBox(height: 1.5),
                Text(
                  playback.activeTrack?.artists.asString() ?? "",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w400,
                    color: (color ?? Colors.white).withValues(alpha: 0.65),
                  ),
                )
              ],
            ),
          ),
        if (mediaQuery.lgAndUp)
          Flexible(
            flex: 1,
            child: Column(
              children: [
                LinkText(
                  playback.activeTrack?.name ?? "",
                  TrackRoute(trackId: playback.activeTrack?.id ?? ""),
                  push: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, color: color),
                ),
                ArtistLink(
                  artists: playback.activeTrack?.artists ?? [],
                  onRouteChange: (route) {
                    context.router.navigateNamed(route);
                  },
                  onOverflowArtistClick: () =>
                      context.navigateTo(TrackRoute(trackId: track!.id)),
                )
              ],
            ),
          ),
      ],
    );
  }
}
