part of 'metadata.dart';

enum MeloraAlbumType {
  album,
  single,
  compilation,
}

@freezed
class MeloraFullAlbumObject with _$MeloraFullAlbumObject {
  factory MeloraFullAlbumObject({
    required String id,
    required String name,
    required List<MeloraSimpleArtistObject> artists,
    @Default([]) List<MeloraImageObject> images,
    required String releaseDate,
    required String externalUri,
    required int totalTracks,
    required MeloraAlbumType albumType,
    String? recordLabel,
    List<String>? genres,
  }) = _MeloraFullAlbumObject;

  factory MeloraFullAlbumObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraFullAlbumObjectFromJson(json);
}

@freezed
class MeloraSimpleAlbumObject with _$MeloraSimpleAlbumObject {
  factory MeloraSimpleAlbumObject({
    required String id,
    required String name,
    required String externalUri,
    required List<MeloraSimpleArtistObject> artists,
    @Default([]) List<MeloraImageObject> images,
    required MeloraAlbumType albumType,
    String? releaseDate,
  }) = _MeloraSimpleAlbumObject;

  factory MeloraSimpleAlbumObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraSimpleAlbumObjectFromJson(json);
}
