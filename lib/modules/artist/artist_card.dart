import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

import 'package:melora/collections/routes.gr.dart';
import 'package:melora/components/image/universal_image.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/blacklist_provider.dart';
import 'package:melora/theme/melora_theme.dart';

class ArtistCard extends HookConsumerWidget {
  final MeloraFullArtistObject artist;
  const ArtistCard(this.artist, {super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme = Theme.of(context);
    final backgroundImage = UniversalImage.imageProvider(
      artist.images.asUrlString(
        placeholder: ImagePlaceholder.artist,
      ),
    );
    final isBlackListed = ref.watch(
      blacklistProvider.select(
        (blacklist) => blacklist.asData?.value.any(
          (element) => element.elementId == artist.id,
        ),
      ),
    );

    return SizedBox(
      width: 180,
      child: Button.card(
        onPressed: () {
          context.navigateTo(ArtistRoute(artistId: artist.id));
        },
        style: ButtonVariance.ghost.copyWith(
          decoration: (context, states, value) {
            final base = ButtonVariance.ghost.decoration(context, states) as BoxDecoration;
            return base.copyWith(
              color: MeloraColors.glass06,
              border: Border.all(
                color: MeloraColors.glassStroke,
                width: 0.5,
              ),
            );
          },
        ),
        child: Column(
          children: [
            Expanded(
              child: Avatar(
                initials: artist.name.trim()[0].toUpperCase(),
                provider: backgroundImage,
                size: 130,
              ),
            ),
            const Gap(10),
            AutoSizeText(
              artist.name,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: theme.typography.bold.copyWith(
                color: MeloraColors.textPrimary,
              ),
            ),
            const Gap(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (isBlackListed == true) ...[
                  DestructiveBadge(
                    style: ButtonStyle.secondaryIcon(
                      size: ButtonSize.small,
                    ),
                    child: Text(context.l10n.blacklisted.toUpperCase()),
                  ),
                  const Gap(5),
                ],
                SecondaryBadge(
                  style: ButtonStyle.secondaryIcon(
                    size: ButtonSize.small,
                  ),
                  child: Text(context.l10n.artist.toUpperCase()),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
