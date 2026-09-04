import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/services/music_api/music_api.dart';

final musicApiServiceProvider = Provider<MusicApiService>((ref) {
  return MusicApiService();
});

final musicApiSearchProvider = FutureProvider.family<
    List<MusicApiResult>, String>((ref, query) async {
  final service = ref.read(musicApiServiceProvider);
  final response = await service.search(query);
  return response.results;
});

final musicApiFetchProvider =
    FutureProvider.family<String, String>((ref, id) async {
  final service = ref.read(musicApiServiceProvider);
  final response = await service.fetch(id);
  return response.url;
});

final musicApiMatchProvider = FutureProvider.family<
    List<MeloraAudioSourceMatchObject>,
    MeloraFullTrackObject>((ref, track) async {
  final service = ref.read(musicApiServiceProvider);
  return service.matchTrack(track);
});
