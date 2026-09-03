import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/provider/audio_player/audio_player.dart';
import 'package:melora/provider/server/sourced_track_provider.dart';

final queryingTrackInfoProvider = Provider<bool>((ref) {
  final audioPlayer = ref.watch(audioPlayerProvider);

  if (audioPlayer.activeTrack == null) {
    return false;
  }

  if (audioPlayer.activeTrack is! MeloraFullTrackObject) {
    return false;
  }

  return ref
      .watch(
        sourcedTrackProvider(
            audioPlayer.activeTrack! as MeloraFullTrackObject),
      )
      .isLoading;
});
