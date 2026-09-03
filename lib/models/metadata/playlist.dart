part of 'metadata.dart';

@freezed
class MeloraFullPlaylistObject with _$MeloraFullPlaylistObject {
  factory MeloraFullPlaylistObject({
    required String id,
    required String name,
    required String description,
    required String externalUri,
    required MeloraUserObject owner,
    @Default([]) List<MeloraImageObject> images,
    @Default([]) List<MeloraUserObject> collaborators,
    @Default(false) bool collaborative,
    @Default(false) bool public,
  }) = _MeloraFullPlaylistObject;

  factory MeloraFullPlaylistObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraFullPlaylistObjectFromJson(json);
}

@freezed
class MeloraSimplePlaylistObject with _$MeloraSimplePlaylistObject {
  factory MeloraSimplePlaylistObject({
    required String id,
    required String name,
    required String description,
    required String externalUri,
    required MeloraUserObject owner,
    @Default([]) List<MeloraImageObject> images,
  }) = _MeloraSimplePlaylistObject;

  factory MeloraSimplePlaylistObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraSimplePlaylistObjectFromJson(json);
}
