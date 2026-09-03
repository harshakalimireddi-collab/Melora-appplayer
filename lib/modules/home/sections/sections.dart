import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/collections/routes.gr.dart';
import 'package:melora/components/fallbacks/error_box.dart';
import 'package:melora/components/fallbacks/no_default_metadata_plugin.dart';
import 'package:melora/components/horizontal_playbutton_card_view/horizontal_playbutton_card_view.dart';
import 'package:melora/extensions/context.dart';
import 'package:melora/provider/metadata_plugin/browse/sections.dart';
import 'package:melora/provider/metadata_plugin/utils/common.dart';
import 'package:melora/services/metadata/errors/exceptions.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';
import 'package:flutter_undraw/flutter_undraw.dart';

class HomePageBrowseSection extends HookConsumerWidget {
  const HomePageBrowseSection({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final browseSections = ref.watch(metadataPluginBrowseSectionsProvider);
    final sections = browseSections.asData?.value.items;
    final ThemeData(:colorScheme) = Theme.of(context);

    if (browseSections.isLoading) {
      return SliverToBoxAdapter(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            Undraw(
              height: 200,
              illustration: UndrawIllustration.process,
              color: colorScheme.primary,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                const CircularProgressIndicator(),
                Text(context.l10n.building_your_timeline).muted,
              ],
            ),
            const Gap(16),
          ],
        ),
      );
    }

    if (browseSections.error
        case MetadataPluginException(
          errorCode: MetadataPluginErrorCode.noDefaultMetadataPlugin,
          message: _,
        )) {
      return const SliverFillRemaining(
        child: Center(child: NoDefaultMetadataPlugin()),
      );
    }

    if (browseSections.hasError) {
      final err = browseSections.error.toString().toLowerCase();
      final isAuthError = err.contains('401') ||
          err.contains('unauthorized') ||
          err.contains('unauthenticated');
      if (isAuthError) {
        return SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 12,
                children: [
                  Undraw(
                    height: 140,
                    illustration: UndrawIllustration.explore,
                    color: colorScheme.primary,
                  ),
                  Text(
                    "Discover Millions of Free Songs",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.foreground,
                    ),
                  ),
                  Text(
                    "Search any song, artist, album, or paste a Spotify playlist link in Search to stream free with no ads.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: colorScheme.mutedForeground,
                    ),
                  ),
                  const Gap(8),
                  Button.primary(
                    child: const Text("Search Music"),
                    onPressed: () {
                      context.navigateTo(const SearchRoute());
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      }

      return SliverFillRemaining(
        child: Center(
          child: ErrorBox(
            error: browseSections.error!,
            onRetry: () {
              ref.invalidate(metadataPluginBrowseSectionsProvider);
            },
          ),
        ),
      );
    }

    return SliverInfiniteList(
      hasReachedMax: browseSections.asData?.value.hasMore == false,
      isLoading: !browseSections.isLoading && browseSections.isLoadingNextPage,
      onFetchData: () {
        ref.read(metadataPluginBrowseSectionsProvider.notifier).fetchMore();
      },
      itemCount: sections?.length ?? 0,
      itemBuilder: (context, index) {
        final section = sections![index];
        if (section.items.isEmpty) return const SizedBox.shrink();

        return HorizontalPlaybuttonCardView(
          items: section.items,
          title: Text(section.title),
          hasNextPage: false,
          isLoadingNextPage: false,
          onFetchMore: () {},
          titleTrailing: section.browseMore
              ? Button.text(
                  child: Text(context.l10n.browse_all),
                  onPressed: () {
                    context.navigateTo(
                      HomeBrowseSectionItemsRoute(
                        sectionId: section.id,
                        section: section,
                      ),
                    );
                  },
                )
              : null,
        );
      },
    );
  }
}
