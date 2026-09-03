// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_sources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicSourcedTrack _$BasicSourcedTrackFromJson(Map json) => BasicSourcedTrack(
      query: MeloraFullTrackObject.fromJson(
          Map<String, dynamic>.from(json['query'] as Map)),
      source: json['source'] as String,
      info: MeloraAudioSourceMatchObject.fromJson(
          Map<String, dynamic>.from(json['info'] as Map)),
      sources: (json['sources'] as List<dynamic>)
          .map((e) => MeloraAudioSourceStreamObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      siblings: (json['siblings'] as List<dynamic>?)
              ?.map((e) => MeloraAudioSourceMatchObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BasicSourcedTrackToJson(BasicSourcedTrack instance) =>
    <String, dynamic>{
      'query': instance.query.toJson(),
      'info': instance.info.toJson(),
      'source': instance.source,
      'sources': instance.sources.map((e) => e.toJson()).toList(),
      'siblings': instance.siblings.map((e) => e.toJson()).toList(),
    };
