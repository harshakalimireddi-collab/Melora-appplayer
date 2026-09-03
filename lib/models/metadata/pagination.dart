part of 'metadata.dart';

@Freezed(genericArgumentFactories: true)
class MeloraPaginationResponseObject<T>
    with _$MeloraPaginationResponseObject<T> {
  factory MeloraPaginationResponseObject({
    required int limit,
    required int? nextOffset,
    required int total,
    required bool hasMore,
    required List<T> items,
  }) = _MeloraPaginationResponseObject<T>;

  factory MeloraPaginationResponseObject.fromJson(
    Map<String, Object?> json,
    T Function(Map<String, dynamic> json) fromJsonT,
  ) =>
      _$MeloraPaginationResponseObjectFromJson<T>(
        json,
        (json) => fromJsonT(json as Map<String, dynamic>),
      );
}
