part of 'metadata.dart';

final oneOptionalDecimalFormatter = NumberFormat('0.#', 'en_US');

enum MeloraMediaCompressionType {
  lossy,
  lossless,
}

@Freezed(unionKey: 'type')
class MeloraAudioSourceContainerPreset
    with _$MeloraAudioSourceContainerPreset {
  const MeloraAudioSourceContainerPreset._();

  @FreezedUnionValue("lossy")
  factory MeloraAudioSourceContainerPreset.lossy({
    required MeloraMediaCompressionType type,
    required String name,
    required List<MeloraAudioLossyContainerQuality> qualities,
  }) = MeloraAudioSourceContainerPresetLossy;

  @FreezedUnionValue("lossless")
  factory MeloraAudioSourceContainerPreset.lossless({
    required MeloraMediaCompressionType type,
    required String name,
    required List<MeloraAudioLosslessContainerQuality> qualities,
  }) = MeloraAudioSourceContainerPresetLossless;

  factory MeloraAudioSourceContainerPreset.fromJson(
          Map<String, dynamic> json) =>
      _$MeloraAudioSourceContainerPresetFromJson(json);

  String getFileExtension() {
    return switch (name) {
      "mp4" => "m4a",
      "webm" => "weba",
      _ => name,
    };
  }
}

@freezed
class MeloraAudioLossyContainerQuality
    with _$MeloraAudioLossyContainerQuality {
  const MeloraAudioLossyContainerQuality._();

  factory MeloraAudioLossyContainerQuality({
    required int bitrate, // bits per second
  }) = _MeloraAudioLossyContainerQuality;

  factory MeloraAudioLossyContainerQuality.fromJson(
          Map<String, dynamic> json) =>
      _$MeloraAudioLossyContainerQualityFromJson(json);

  @override
  toString() {
    return "${oneOptionalDecimalFormatter.format(bitrate / 1000)}kbps";
  }
}

@freezed
class MeloraAudioLosslessContainerQuality
    with _$MeloraAudioLosslessContainerQuality {
  const MeloraAudioLosslessContainerQuality._();

  factory MeloraAudioLosslessContainerQuality({
    required int bitDepth, // bit
    required int sampleRate, // hz
  }) = _MeloraAudioLosslessContainerQuality;

  factory MeloraAudioLosslessContainerQuality.fromJson(
          Map<String, dynamic> json) =>
      _$MeloraAudioLosslessContainerQualityFromJson(json);

  @override
  toString() {
    return "${bitDepth}bit • ${oneOptionalDecimalFormatter.format(sampleRate / 1000)}kHz";
  }
}

@freezed
class MeloraAudioSourceMatchObject with _$MeloraAudioSourceMatchObject {
  factory MeloraAudioSourceMatchObject({
    required String id,
    required String title,
    required List<String> artists,
    required Duration duration,
    String? thumbnail,
    required String externalUri,
  }) = _MeloraAudioSourceMatchObject;

  factory MeloraAudioSourceMatchObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraAudioSourceMatchObjectFromJson(json);
}

@freezed
class MeloraAudioSourceStreamObject with _$MeloraAudioSourceStreamObject {
  factory MeloraAudioSourceStreamObject({
    required String url,
    required String container,
    required MeloraMediaCompressionType type,
    String? codec,
    double? bitrate,
    int? bitDepth,
    double? sampleRate,
  }) = _MeloraAudioSourceStreamObject;

  factory MeloraAudioSourceStreamObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraAudioSourceStreamObjectFromJson(json);
}
