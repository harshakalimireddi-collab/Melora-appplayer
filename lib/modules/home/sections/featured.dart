import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/components/image/universal_image.dart';
import 'package:melora/extensions/constrains.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/metadata_plugin/browse/sections.dart';
import 'package:melora/theme/melora_theme.dart';

class HomeFeaturedSection extends HookConsumerWidget {
  const HomeFeaturedSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final browseSections = ref.watch(metadataPluginBrowseSectionsProvider);
    final sections = browseSections.asData?.value.items;
    final mediaQuery = MediaQuery.of(context);

    // Look for first available item from browse sections or use curated fallback
    dynamic featuredItem;
    if (sections != null && sections.isNotEmpty) {
      for (final sec in sections) {
        if (sec.items.isNotEmpty) {
          featuredItem = sec.items.first;
          break;
        }
      }
    }

    String title = "Neon Nights";
    String artist = "The Midnight";
    String description =
        "A cinematic sonic journey through atmospheric synths, deep basslines, and hypnotic grooves.";
    String imageUrl =
        "https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?auto=format&fit=crop&w=800&q=80";

    if (featuredItem is MeloraSimpleAlbumObject) {
      title = featuredItem.name;
      artist = featuredItem.artists.asString();
      imageUrl = featuredItem.images.asUrlString(
        placeholder: ImagePlaceholder.albumArt,
      );
    } else if (featuredItem is MeloraSimplePlaylistObject) {
      title = featuredItem.name;
      artist = featuredItem.owner.name.isNotEmpty
          ? featuredItem.owner.name
          : "Curated Playlist";
      if (featuredItem.description?.isNotEmpty == true) {
        description = featuredItem.description!;
      }
      imageUrl = featuredItem.images.asUrlString(
        placeholder: ImagePlaceholder.collection,
      );
    }

    final isCompact = mediaQuery.smAndDown;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Subtle Aurora ambient glow behind the card
          Positioned(
            left: isCompact ? 10 : 30,
            top: 10,
            child: Container(
              width: isCompact ? 140 : 200,
              height: isCompact ? 140 : 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x337C5CFC),
                    blurRadius: 70,
                    spreadRadius: 20,
                  ),
                  BoxShadow(
                    color: Color(0x1A38BEFF),
                    blurRadius: 90,
                    spreadRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          // Main Hero Glass Card
          Container(
            padding: EdgeInsets.all(isCompact ? 16 : 22),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xE6141827),
                  Color(0xE60E1224),
                  Color(0xE60A0E1A),
                ],
                stops: [0.0, 0.5, 1.0],
              ),
              borderRadius: MeloraRadius.lgBr,
              border: Border.all(
                color: MeloraColors.glassStroke,
                width: 0.5,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x33000000),
                  blurRadius: 24,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: isCompact
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildArtwork(imageUrl, 150),
                      const SizedBox(height: 16),
                      _buildInfo(context, ref, title, artist, description, true),
                    ],
                  )
                : Row(
                    children: [
                      _buildArtwork(imageUrl, 175),
                      const SizedBox(width: 24),
                      Expanded(
                        child: _buildInfo(
                            context, ref, title, artist, description, false),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildArtwork(String imageUrl, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: MeloraRadius.mdBr,
        boxShadow: const [
          BoxShadow(
            color: Color(0x55000000),
            blurRadius: 16,
            offset: Offset(0, 6),
          ),
          BoxShadow(
            color: Color(0x227C5CFC),
            blurRadius: 25,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: MeloraRadius.mdBr,
        child: UniversalImage(
          path: imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildInfo(
    BuildContext context,
    WidgetRef ref,
    String title,
    String artist,
    String description,
    bool isCompact,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Badge
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3.5),
          decoration: BoxDecoration(
            color: MeloraColors.accentGlow,
            borderRadius: MeloraRadius.xsBr,
            border: Border.all(
              color: MeloraColors.accentGlowStrong,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                MeloraIcons.music,
                size: 11,
                color: MeloraColors.accentSoft,
              ),
              const SizedBox(width: 5),
              const Text(
                "FEATURED SPOTLIGHT",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.0,
                  color: MeloraColors.accentSoft,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.4,
            color: MeloraColors.textPrimary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          artist,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: MeloraColors.accentSoft,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w400,
            color: MeloraColors.textSecondary,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 16),
        // Actions
        Row(
          children: [
            GestureDetector(
              onTap: () {
                // Trigger play if playlist or album exists
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      MeloraColors.accent,
                      MeloraColors.aurora1,
                    ],
                  ),
                  borderRadius: MeloraRadius.mdBr,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x407C5CFC),
                      blurRadius: 14,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      MeloraIcons.play,
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Play Now",
                      style: TextStyle(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: MeloraColors.glass06,
                borderRadius: MeloraRadius.mdBr,
                border: Border.all(
                  color: MeloraColors.glassStroke,
                  width: 0.5,
                ),
              ),
              child: const Icon(
                MeloraIcons.heart,
                size: 16,
                color: MeloraColors.textSecondary,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: MeloraColors.glass06,
                borderRadius: MeloraRadius.mdBr,
                border: Border.all(
                  color: MeloraColors.glassStroke,
                  width: 0.5,
                ),
              ),
              child: const Icon(
                MeloraIcons.moreHorizontal,
                size: 16,
                color: MeloraColors.textSecondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
