part of 'metadata.dart';

@freezed
class MeloraSearchResponseObject with _$MeloraSearchResponseObject {
  factory MeloraSearchResponseObject({
    required List<MeloraSimpleAlbumObject> albums,
    required List<MeloraFullArtistObject> artists,
    required List<MeloraSimplePlaylistObject> playlists,
    required List<MeloraFullTrackObject> tracks,
  }) = _MeloraSearchResponseObject;

  factory MeloraSearchResponseObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraSearchResponseObjectFromJson(json);
}
