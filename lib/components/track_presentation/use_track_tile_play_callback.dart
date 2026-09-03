import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:melora/components/dialogs/select_device_dialog.dart';
import 'package:melora/components/track_presentation/presentation_props.dart';
import 'package:melora/components/track_presentation/presentation_state.dart';
import 'package:melora/extensions/list.dart';

import 'package:melora/models/connect/connect.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/connect/connect.dart';
import 'package:melora/provider/history/history.dart';

Future<void> Function(MeloraTrackObject track, int index)
    useTrackTilePlayCallback(
  WidgetRef ref,
) {
  final context = useContext();
  final options = TrackPresentationOptions.of(context);
  final playlist = ref.watch(audioPlayerProvider);
  final playlistNotifier = ref.watch(audioPlayerProvider.notifier);
  final historyNotifier = ref.watch(playbackHistoryActionsProvider);

  final isActive = useMemoized(
    () => playlist.collections.contains(options.collectionId),
    [playlist.collections, options.collectionId],
  );

  final onTapTrackTile =
      useCallback((MeloraTrackObject track, int index) async {
    final state = ref.read(presentationStateProvider(options.collection));
    final notifier =
        ref.read(presentationStateProvider(options.collection).notifier);

    if (state.selectedTracks.isNotEmpty) {
      if (state.selectedTracks.contains(track)) {
        notifier.deselectTrack(track);
      } else {
        notifier.selectTrack(track);
      }
      return;
    }

    final isRemoteDevice = await showSelectDeviceDialog(context, ref);
    if (isRemoteDevice == null) return;

    if (isRemoteDevice) {
      final remotePlayback = ref.read(connectProvider.notifier);
      final remoteQueue = ref.read(queueProvider);
      if (remoteQueue.collections.contains(options.collectionId) ||
          remoteQueue.tracks.any((s) => s.id == track.id)) {
        await playlistNotifier.jumpToTrack(track);
      } else {
        final tracks = await options.pagination.onFetchAll();
        await remotePlayback.load(
          options.collection is MeloraSimpleAlbumObject
              ? WebSocketLoadEventData.album(
                  tracks: tracks,
                  collection: options.collection as MeloraSimpleAlbumObject,
                  initialIndex: index,
                )
              : WebSocketLoadEventData.playlist(
                  tracks: tracks,
                  collection: options.collection as MeloraSimplePlaylistObject,
                  initialIndex: index,
                ),
        );
      }
    } else {
      if (isActive || playlist.tracks.containsBy(track, (a) => a.id)) {
        await playlistNotifier.jumpToTrack(track);
      } else {
        final tracks = await options.pagination.onFetchAll();
        await playlistNotifier.load(
          tracks,
          initialIndex: index,
          autoPlay: true,
        );
        playlistNotifier.addCollection(options.collectionId);
        if (options.collection is MeloraSimpleAlbumObject) {
          historyNotifier
              .addAlbums([options.collection as MeloraSimpleAlbumObject]);
        } else {
          historyNotifier.addPlaylists(
              [options.collection as MeloraSimplePlaylistObject]);
        }
      }
    }
  }, [isActive, playlist, options, playlistNotifier, historyNotifier]);

  return onTapTrackTile;
}
