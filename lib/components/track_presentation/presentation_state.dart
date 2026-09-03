import 'package:collection/collection.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/pages/library/user_local_tracks/user_local_tracks.dart';
import 'package:melora/provider/metadata_plugin/library/tracks.dart';
import 'package:melora/provider/metadata_plugin/tracks/album.dart';
import 'package:melora/provider/metadata_plugin/tracks/playlist.dart';
import 'package:melora/utils/service_utils.dart';

class PresentationState {
  final List<MeloraTrackObject> selectedTracks;
  final List<MeloraTrackObject> presentationTracks;
  final SortBy sortBy;

  const PresentationState({
    required this.selectedTracks,
    required this.presentationTracks,
    required this.sortBy,
  });

  PresentationState copyWith({
    List<MeloraTrackObject>? selectedTracks,
    List<MeloraTrackObject>? presentationTracks,
    SortBy? sortBy,
  }) {
    return PresentationState(
      selectedTracks: selectedTracks ?? this.selectedTracks,
      presentationTracks: presentationTracks ?? this.presentationTracks,
      sortBy: sortBy ?? this.sortBy,
    );
  }
}

class PresentationStateNotifier
    extends AutoDisposeFamilyNotifier<PresentationState, Object> {
  @override
  PresentationState build(collection) {
    if (arg case MeloraSimplePlaylistObject() || MeloraSimpleAlbumObject()) {
      if (isSavedTrackPlaylist) {
        ref.listen(
          metadataPluginSavedTracksProvider,
          (previous, next) {
            next.whenData((value) {
              state = state.copyWith(
                presentationTracks: ServiceUtils.sortTracks(
                  value.items,
                  state.sortBy,
                ),
              );
            });
          },
        );
      } else {
        ref.listen(
          arg is MeloraSimplePlaylistObject
              ? metadataPluginPlaylistTracksProvider(
                  (arg as MeloraSimplePlaylistObject).id)
              : metadataPluginAlbumTracksProvider(
                  (arg as MeloraSimpleAlbumObject).id),
          (previous, next) {
            next.whenData((value) {
              state = state.copyWith(
                presentationTracks: ServiceUtils.sortTracks(
                  value.items,
                  state.sortBy,
                ),
              );
            });
          },
        );
      }
    }

    return PresentationState(
      selectedTracks: [],
      presentationTracks: tracks,
      sortBy: SortBy.none,
    );
  }

  bool get isSavedTrackPlaylist =>
      arg is MeloraSimplePlaylistObject &&
      (arg as MeloraSimplePlaylistObject).id == "user-liked-tracks";

  List<MeloraTrackObject> get tracks {
    assert(
      arg is MeloraSimplePlaylistObject || arg is MeloraSimpleAlbumObject,
      "arg must be MeloraSimplePlaylistObject or MeloraSimpleAlbumObject",
    );

    final isPlaylist = arg is MeloraSimplePlaylistObject;

    final tracks = switch ((isPlaylist, isSavedTrackPlaylist)) {
          (true, true) =>
            ref.read(metadataPluginSavedTracksProvider).asData?.value.items,
          (true, false) => ref
              .read(metadataPluginPlaylistTracksProvider(
                  (arg as MeloraSimplePlaylistObject).id))
              .asData
              ?.value
              .items,
          _ => ref
              .read(metadataPluginAlbumTracksProvider(
                  (arg as MeloraSimpleAlbumObject).id))
              .asData
              ?.value
              .items,
        } ??
        <MeloraFullTrackObject>[];

    return tracks;
  }

  void selectTrack(MeloraTrackObject track) {
    if (state.selectedTracks.any((e) => e.id == track.id)) {
      return;
    }

    state = state.copyWith(
      selectedTracks: [...state.selectedTracks, track],
    );
  }

  void selectAllTracks() {
    state = state.copyWith(
      selectedTracks: tracks,
    );
  }

  void deselectTrack(MeloraTrackObject track) {
    state = state.copyWith(
      selectedTracks: state.selectedTracks.where((e) => e != track).toList(),
    );
  }

  void deselectAllTracks() {
    state = state.copyWith(
      selectedTracks: [],
    );
  }

  void filterTracks(String query) {
    if (query.isEmpty) {
      return;
    }

    state = state.copyWith(
      presentationTracks: ServiceUtils.sortTracks(
        tracks
            .map((e) => (weightedRatio(e.name, query), e))
            .sorted((a, b) => b.$1.compareTo(a.$1))
            .where((e) => e.$1 > 50)
            .map((e) => e.$2)
            .toList(),
        state.sortBy,
      ),
    );
  }

  void clearFilter() {
    state = state.copyWith(
      presentationTracks: ServiceUtils.sortTracks(tracks, state.sortBy),
    );
  }

  void sortTracks(SortBy sortBy) {
    state = state.copyWith(
      presentationTracks: sortBy == SortBy.none
          ? tracks
          : ServiceUtils.sortTracks(state.presentationTracks, sortBy),
      sortBy: sortBy,
    );
  }
}

final presentationStateProvider = AutoDisposeNotifierProviderFamily<
    PresentationStateNotifier, PresentationState, Object>(
  () => PresentationStateNotifier(),
);
