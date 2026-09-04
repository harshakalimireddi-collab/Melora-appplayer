import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shadcn_flutter/shadcn_flutter_extension.dart';

import 'package:melora/components/titlebar/titlebar.dart';
import 'package:melora/components/image/universal_image.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/hooks/utils/use_palette_color.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/pages/lyrics/plain_lyrics.dart';
import 'package:melora/pages/lyrics/synced_lyrics.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/lyrics/synced.dart';
import 'package:melora/theme/melora_theme.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LyricsPage extends HookConsumerWidget {
  static const name = "lyrics";

  const LyricsPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final playlist = ref.watch(audioPlayerProvider);
    final activeTrack = playlist.activeTrack;
    final mediaQuery = MediaQuery.of(context);

    String albumArt = useMemoized(
      () => (activeTrack?.album.images).asUrlString(
        index: (activeTrack?.album.images.length ?? 1) - 1,
        placeholder: ImagePlaceholder.albumArt,
      ),
      [activeTrack?.album.images],
    );
    final palette = usePaletteColor(albumArt, ref);
    final selectedIndex = useState(0);

    Widget tabbar = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Tabs(
        index: selectedIndex.value,
        onChanged: (index) => selectedIndex.value = index,
        children: [
          TabItem(child: Text(context.l10n.synced)),
          TabItem(child: Text(context.l10n.plain)),
        ],
      ),
    );

    tabbar = Row(
      children: [
        tabbar,
        const Spacer(),
        Consumer(
          builder: (context, ref, child) {
            final playback = ref.watch(audioPlayerProvider);
            final lyric = ref.watch(syncedLyricsProvider(playback.activeTrack));
            final providerName = lyric.asData?.value.provider;

            if (providerName == null) {
              return const SizedBox.shrink();
            }

            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                context.l10n.powered_by_provider(providerName),
                style: const TextStyle(
                  fontSize: 11,
                  color: MeloraColors.textTertiary,
                ),
              ),
            );
          },
        ),
      ],
    );

    final isDesktop = mediaQuery.lgAndUp;

    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: MeloraColors.bg,
        floatingHeader: true,
        headers: [
          if (kTitlebarVisible)
            TitleBar(
              backgroundColor: Colors.transparent,
              title: tabbar,
              height: 52 * context.theme.scaling,
              automaticallyImplyLeading: false,
            )
          else
            tabbar,
        ],
        child: isDesktop
            ? Row(
                children: [
                  // ── Left: Large Album Artwork & Track Information ─
                  Container(
                    width: 380,
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Artwork with subtle aurora glow
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 260,
                              height: 260,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x337C5CFC),
                                    blurRadius: 60,
                                    spreadRadius: 10,
                                  ),
                                  BoxShadow(
                                    color: Color(0x1F38BEFF),
                                    blurRadius: 80,
                                    spreadRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 280,
                              height: 280,
                              decoration: BoxDecoration(
                                borderRadius: MeloraRadius.lgBr,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x66000000),
                                    blurRadius: 24,
                                    offset: Offset(0, 8),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: MeloraRadius.lgBr,
                                child: UniversalImage(
                                  path: albumArt,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          activeTrack?.name ?? "No track playing",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.4,
                            color: MeloraColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          activeTrack?.artists.asString() ?? "",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: MeloraColors.accentSoft,
                          ),
                        ),
                        if (activeTrack?.album.name.isNotEmpty == true) ...[
                          const SizedBox(height: 4),
                          Text(
                            activeTrack!.album.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 12.5,
                              color: MeloraColors.textTertiary,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  // Vertical divider
                  Container(
                    width: 0.5,
                    color: MeloraColors.separator,
                  ),
                  // ── Right: Centered Smooth Lyrics ─────────────────
                  Expanded(
                    child: IndexedStack(
                      index: selectedIndex.value,
                      children: [
                        SyncedLyrics(palette: palette, isModal: false),
                        PlainLyrics(palette: palette, isModal: false),
                      ],
                    ),
                  ),
                ],
              )
            // Mobile / compact view
            : IndexedStack(
                index: selectedIndex.value,
                children: [
                  SyncedLyrics(palette: palette, isModal: false),
                  PlainLyrics(palette: palette, isModal: false),
                ],
              ),
      ),
    );
  }
}
