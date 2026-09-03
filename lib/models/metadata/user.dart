part of 'metadata.dart';

@freezed
class MeloraUserObject with _$MeloraUserObject {
  factory MeloraUserObject({
    required final String id,
    required final String name,
    @Default([]) final List<MeloraImageObject> images,
    required final String externalUri,
  }) = _MeloraUserObject;

  factory MeloraUserObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraUserObjectFromJson(json);
}
