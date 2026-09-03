part of 'metadata.dart';

@Freezed(genericArgumentFactories: true)
class MeloraBrowseSectionObject<T> with _$MeloraBrowseSectionObject<T> {
  factory MeloraBrowseSectionObject({
    required String id,
    required String title,
    required String externalUri,
    required bool browseMore,
    required List<T> items,
  }) = _MeloraBrowseSectionObject<T>;

  factory MeloraBrowseSectionObject.fromJson(
    Map<String, Object?> json,
    T Function(Map<String, dynamic> json) fromJsonT,
  ) =>
      _$MeloraBrowseSectionObjectFromJson<T>(
        json,
        (json) => fromJsonT(json as Map<String, dynamic>),
      );
}
