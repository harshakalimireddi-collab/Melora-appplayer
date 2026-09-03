part of 'metadata.dart';

@freezed
class MeloraFullArtistObject with _$MeloraFullArtistObject {
  factory MeloraFullArtistObject({
    required String id,
    required String name,
    required String externalUri,
    @Default([]) List<MeloraImageObject> images,
    List<String>? genres,
    int? followers,
  }) = _MeloraFullArtistObject;

  factory MeloraFullArtistObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraFullArtistObjectFromJson(json);
}

@freezed
class MeloraSimpleArtistObject with _$MeloraSimpleArtistObject {
  factory MeloraSimpleArtistObject({
    required String id,
    required String name,
    required String externalUri,
    List<MeloraImageObject>? images,
  }) = _MeloraSimpleArtistObject;

  factory MeloraSimpleArtistObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraSimpleArtistObjectFromJson(json);
}

extension MeloraFullArtistObjectAsString on List<MeloraFullArtistObject> {
  String asString() {
    return map((e) => e.name).join(", ");
  }
}

extension MeloraSimpleArtistObjectAsString on List<MeloraSimpleArtistObject> {
  String asString() {
    return map((e) => e.name).join(", ");
  }
}
