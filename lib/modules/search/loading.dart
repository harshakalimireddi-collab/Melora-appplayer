import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:melora/collections/melora_icons.dart';
import 'package:melora/extensions/constrains.dart';

import 'package:melora/pages/search/search.dart';
import 'package:melora/theme/melora_theme.dart';

class SearchPlaceholder extends HookConsumerWidget {
  final AsyncValue snapshot;
  final Widget child;
  const SearchPlaceholder({
    super.key,
    required this.child,
    required this.snapshot,
  });

  @override
  Widget build(BuildContext context, ref) {
    final mediaQuery = MediaQuery.sizeOf(context);
    final searchTerm = ref.watch(searchTermStateProvider);

    return switch ((searchTerm.isEmpty, snapshot.isLoading)) {
      (true, false) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 60),
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: MeloraColors.surface1,
                  borderRadius: MeloraRadius.lgBr,
                  border: Border.all(
                    color: MeloraColors.glassStroke,
                    width: 0.5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x227C5CFC),
                      blurRadius: 30,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(
                  MeloraIcons.search,
                  size: 30,
                  color: MeloraColors.accentSoft,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Search your universe of sound",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: MeloraColors.textPrimary,
                  letterSpacing: -0.3,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Discover tracks, albums, artists, and playlists instantly.",
                style: TextStyle(
                  fontSize: 13,
                  color: MeloraColors.textSecondary,
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      (false, true) => Container(
          constraints: BoxConstraints(
            maxWidth:
                mediaQuery.lgAndUp ? mediaQuery.width * 0.5 : mediaQuery.width,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              const SizedBox(
                width: 28,
                height: 28,
                child: CircularProgressIndicator(),
              ),
              const SizedBox(height: 16),
              const Text(
                "Searching music catalog...",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: MeloraColors.textSecondary,
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
      _ => child,
    };
  }
}
