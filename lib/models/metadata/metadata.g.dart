// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeloraAudioSourceContainerPresetLossyImpl
    _$$MeloraAudioSourceContainerPresetLossyImplFromJson(Map json) =>
        _$MeloraAudioSourceContainerPresetLossyImpl(
          type: $enumDecode(_$MeloraMediaCompressionTypeEnumMap, json['type']),
          name: json['name'] as String,
          qualities: (json['qualities'] as List<dynamic>)
              .map((e) => MeloraAudioLossyContainerQuality.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
        );

Map<String, dynamic> _$$MeloraAudioSourceContainerPresetLossyImplToJson(
        _$MeloraAudioSourceContainerPresetLossyImpl instance) =>
    <String, dynamic>{
      'type': _$MeloraMediaCompressionTypeEnumMap[instance.type]!,
      'name': instance.name,
      'qualities': instance.qualities.map((e) => e.toJson()).toList(),
    };

const _$MeloraMediaCompressionTypeEnumMap = {
  MeloraMediaCompressionType.lossy: 'lossy',
  MeloraMediaCompressionType.lossless: 'lossless',
};

_$MeloraAudioSourceContainerPresetLosslessImpl
    _$$MeloraAudioSourceContainerPresetLosslessImplFromJson(Map json) =>
        _$MeloraAudioSourceContainerPresetLosslessImpl(
          type: $enumDecode(_$MeloraMediaCompressionTypeEnumMap, json['type']),
          name: json['name'] as String,
          qualities: (json['qualities'] as List<dynamic>)
              .map((e) => MeloraAudioLosslessContainerQuality.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
        );

Map<String, dynamic> _$$MeloraAudioSourceContainerPresetLosslessImplToJson(
        _$MeloraAudioSourceContainerPresetLosslessImpl instance) =>
    <String, dynamic>{
      'type': _$MeloraMediaCompressionTypeEnumMap[instance.type]!,
      'name': instance.name,
      'qualities': instance.qualities.map((e) => e.toJson()).toList(),
    };

_$MeloraAudioLossyContainerQualityImpl
    _$$MeloraAudioLossyContainerQualityImplFromJson(Map json) =>
        _$MeloraAudioLossyContainerQualityImpl(
          bitrate: (json['bitrate'] as num).toInt(),
        );

Map<String, dynamic> _$$MeloraAudioLossyContainerQualityImplToJson(
        _$MeloraAudioLossyContainerQualityImpl instance) =>
    <String, dynamic>{
      'bitrate': instance.bitrate,
    };

_$MeloraAudioLosslessContainerQualityImpl
    _$$MeloraAudioLosslessContainerQualityImplFromJson(Map json) =>
        _$MeloraAudioLosslessContainerQualityImpl(
          bitDepth: (json['bitDepth'] as num).toInt(),
          sampleRate: (json['sampleRate'] as num).toInt(),
        );

Map<String, dynamic> _$$MeloraAudioLosslessContainerQualityImplToJson(
        _$MeloraAudioLosslessContainerQualityImpl instance) =>
    <String, dynamic>{
      'bitDepth': instance.bitDepth,
      'sampleRate': instance.sampleRate,
    };

_$MeloraAudioSourceMatchObjectImpl
    _$$MeloraAudioSourceMatchObjectImplFromJson(Map json) =>
        _$MeloraAudioSourceMatchObjectImpl(
          id: json['id'] as String,
          title: json['title'] as String,
          artists: (json['artists'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          duration: Duration(microseconds: (json['duration'] as num).toInt()),
          thumbnail: json['thumbnail'] as String?,
          externalUri: json['externalUri'] as String,
        );

Map<String, dynamic> _$$MeloraAudioSourceMatchObjectImplToJson(
        _$MeloraAudioSourceMatchObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'artists': instance.artists,
      'duration': instance.duration.inMicroseconds,
      'thumbnail': instance.thumbnail,
      'externalUri': instance.externalUri,
    };

_$MeloraAudioSourceStreamObjectImpl
    _$$MeloraAudioSourceStreamObjectImplFromJson(Map json) =>
        _$MeloraAudioSourceStreamObjectImpl(
          url: json['url'] as String,
          container: json['container'] as String,
          type: $enumDecode(_$MeloraMediaCompressionTypeEnumMap, json['type']),
          codec: json['codec'] as String?,
          bitrate: (json['bitrate'] as num?)?.toDouble(),
          bitDepth: (json['bitDepth'] as num?)?.toInt(),
          sampleRate: (json['sampleRate'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$$MeloraAudioSourceStreamObjectImplToJson(
        _$MeloraAudioSourceStreamObjectImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'container': instance.container,
      'type': _$MeloraMediaCompressionTypeEnumMap[instance.type]!,
      'codec': instance.codec,
      'bitrate': instance.bitrate,
      'bitDepth': instance.bitDepth,
      'sampleRate': instance.sampleRate,
    };

_$MeloraFullAlbumObjectImpl _$$MeloraFullAlbumObjectImplFromJson(Map json) =>
    _$MeloraFullAlbumObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => MeloraSimpleArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => MeloraImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      releaseDate: json['releaseDate'] as String,
      externalUri: json['externalUri'] as String,
      totalTracks: (json['totalTracks'] as num).toInt(),
      albumType: $enumDecode(_$MeloraAlbumTypeEnumMap, json['albumType']),
      recordLabel: json['recordLabel'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MeloraFullAlbumObjectImplToJson(
        _$MeloraFullAlbumObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'releaseDate': instance.releaseDate,
      'externalUri': instance.externalUri,
      'totalTracks': instance.totalTracks,
      'albumType': _$MeloraAlbumTypeEnumMap[instance.albumType]!,
      'recordLabel': instance.recordLabel,
      'genres': instance.genres,
    };

const _$MeloraAlbumTypeEnumMap = {
  MeloraAlbumType.album: 'album',
  MeloraAlbumType.single: 'single',
  MeloraAlbumType.compilation: 'compilation',
};

_$MeloraSimpleAlbumObjectImpl _$$MeloraSimpleAlbumObjectImplFromJson(
        Map json) =>
    _$MeloraSimpleAlbumObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists: (json['artists'] as List<dynamic>)
          .map((e) => MeloraSimpleArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => MeloraImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      albumType: $enumDecode(_$MeloraAlbumTypeEnumMap, json['albumType']),
      releaseDate: json['releaseDate'] as String?,
    );

Map<String, dynamic> _$$MeloraSimpleAlbumObjectImplToJson(
        _$MeloraSimpleAlbumObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'albumType': _$MeloraAlbumTypeEnumMap[instance.albumType]!,
      'releaseDate': instance.releaseDate,
    };

_$MeloraFullArtistObjectImpl _$$MeloraFullArtistObjectImplFromJson(
        Map json) =>
    _$MeloraFullArtistObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => MeloraImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      followers: (json['followers'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MeloraFullArtistObjectImplToJson(
        _$MeloraFullArtistObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'genres': instance.genres,
      'followers': instance.followers,
    };

_$MeloraSimpleArtistObjectImpl _$$MeloraSimpleArtistObjectImplFromJson(
        Map json) =>
    _$MeloraSimpleArtistObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) =>
              MeloraImageObject.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$MeloraSimpleArtistObjectImplToJson(
        _$MeloraSimpleArtistObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'images': instance.images?.map((e) => e.toJson()).toList(),
    };

_$MeloraBrowseSectionObjectImpl<T>
    _$$MeloraBrowseSectionObjectImplFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
        _$MeloraBrowseSectionObjectImpl<T>(
          id: json['id'] as String,
          title: json['title'] as String,
          externalUri: json['externalUri'] as String,
          browseMore: json['browseMore'] as bool,
          items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
        );

Map<String, dynamic> _$$MeloraBrowseSectionObjectImplToJson<T>(
  _$MeloraBrowseSectionObjectImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'externalUri': instance.externalUri,
      'browseMore': instance.browseMore,
      'items': instance.items.map(toJsonT).toList(),
    };

_$MetadataFormFieldInputObjectImpl _$$MetadataFormFieldInputObjectImplFromJson(
        Map json) =>
    _$MetadataFormFieldInputObjectImpl(
      objectType: json['objectType'] as String,
      id: json['id'] as String,
      variant:
          $enumDecodeNullable(_$FormFieldVariantEnumMap, json['variant']) ??
              FormFieldVariant.text,
      placeholder: json['placeholder'] as String?,
      defaultValue: json['defaultValue'] as String?,
      required: json['required'] as bool?,
      regex: json['regex'] as String?,
    );

Map<String, dynamic> _$$MetadataFormFieldInputObjectImplToJson(
        _$MetadataFormFieldInputObjectImpl instance) =>
    <String, dynamic>{
      'objectType': instance.objectType,
      'id': instance.id,
      'variant': _$FormFieldVariantEnumMap[instance.variant]!,
      'placeholder': instance.placeholder,
      'defaultValue': instance.defaultValue,
      'required': instance.required,
      'regex': instance.regex,
    };

const _$FormFieldVariantEnumMap = {
  FormFieldVariant.text: 'text',
  FormFieldVariant.password: 'password',
  FormFieldVariant.number: 'number',
};

_$MetadataFormFieldTextObjectImpl _$$MetadataFormFieldTextObjectImplFromJson(
        Map json) =>
    _$MetadataFormFieldTextObjectImpl(
      objectType: json['objectType'] as String,
      text: json['text'] as String,
    );

Map<String, dynamic> _$$MetadataFormFieldTextObjectImplToJson(
        _$MetadataFormFieldTextObjectImpl instance) =>
    <String, dynamic>{
      'objectType': instance.objectType,
      'text': instance.text,
    };

_$MeloraImageObjectImpl _$$MeloraImageObjectImplFromJson(Map json) =>
    _$MeloraImageObjectImpl(
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MeloraImageObjectImplToJson(
        _$MeloraImageObjectImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

_$MeloraPaginationResponseObjectImpl<T>
    _$$MeloraPaginationResponseObjectImplFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
        _$MeloraPaginationResponseObjectImpl<T>(
          limit: (json['limit'] as num).toInt(),
          nextOffset: (json['nextOffset'] as num?)?.toInt(),
          total: (json['total'] as num).toInt(),
          hasMore: json['hasMore'] as bool,
          items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
        );

Map<String, dynamic> _$$MeloraPaginationResponseObjectImplToJson<T>(
  _$MeloraPaginationResponseObjectImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'limit': instance.limit,
      'nextOffset': instance.nextOffset,
      'total': instance.total,
      'hasMore': instance.hasMore,
      'items': instance.items.map(toJsonT).toList(),
    };

_$MeloraFullPlaylistObjectImpl _$$MeloraFullPlaylistObjectImplFromJson(
        Map json) =>
    _$MeloraFullPlaylistObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      externalUri: json['externalUri'] as String,
      owner: MeloraUserObject.fromJson(
          Map<String, dynamic>.from(json['owner'] as Map)),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => MeloraImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      collaborators: (json['collaborators'] as List<dynamic>?)
              ?.map((e) => MeloraUserObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      collaborative: json['collaborative'] as bool? ?? false,
      public: json['public'] as bool? ?? false,
    );

Map<String, dynamic> _$$MeloraFullPlaylistObjectImplToJson(
        _$MeloraFullPlaylistObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'externalUri': instance.externalUri,
      'owner': instance.owner.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
      'collaborators': instance.collaborators.map((e) => e.toJson()).toList(),
      'collaborative': instance.collaborative,
      'public': instance.public,
    };

_$MeloraSimplePlaylistObjectImpl _$$MeloraSimplePlaylistObjectImplFromJson(
        Map json) =>
    _$MeloraSimplePlaylistObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      externalUri: json['externalUri'] as String,
      owner: MeloraUserObject.fromJson(
          Map<String, dynamic>.from(json['owner'] as Map)),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => MeloraImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$MeloraSimplePlaylistObjectImplToJson(
        _$MeloraSimplePlaylistObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'externalUri': instance.externalUri,
      'owner': instance.owner.toJson(),
      'images': instance.images.map((e) => e.toJson()).toList(),
    };

_$MeloraSearchResponseObjectImpl _$$MeloraSearchResponseObjectImplFromJson(
        Map json) =>
    _$MeloraSearchResponseObjectImpl(
      albums: (json['albums'] as List<dynamic>)
          .map((e) => MeloraSimpleAlbumObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => MeloraFullArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      playlists: (json['playlists'] as List<dynamic>)
          .map((e) => MeloraSimplePlaylistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => MeloraFullTrackObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$MeloraSearchResponseObjectImplToJson(
        _$MeloraSearchResponseObjectImpl instance) =>
    <String, dynamic>{
      'albums': instance.albums.map((e) => e.toJson()).toList(),
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'playlists': instance.playlists.map((e) => e.toJson()).toList(),
      'tracks': instance.tracks.map((e) => e.toJson()).toList(),
    };

_$MeloraLocalTrackObjectImpl _$$MeloraLocalTrackObjectImplFromJson(
        Map json) =>
    _$MeloraLocalTrackObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => MeloraSimpleArtistObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      album: MeloraSimpleAlbumObject.fromJson(
          Map<String, dynamic>.from(json['album'] as Map)),
      durationMs: (json['durationMs'] as num).toInt(),
      path: json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MeloraLocalTrackObjectImplToJson(
        _$MeloraLocalTrackObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album': instance.album.toJson(),
      'durationMs': instance.durationMs,
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$MeloraFullTrackObjectImpl _$$MeloraFullTrackObjectImplFromJson(Map json) =>
    _$MeloraFullTrackObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      externalUri: json['externalUri'] as String,
      artists: (json['artists'] as List<dynamic>?)
              ?.map((e) => MeloraSimpleArtistObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      album: MeloraSimpleAlbumObject.fromJson(
          Map<String, dynamic>.from(json['album'] as Map)),
      durationMs: (json['durationMs'] as num).toInt(),
      isrc: json['isrc'] as String,
      explicit: json['explicit'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MeloraFullTrackObjectImplToJson(
        _$MeloraFullTrackObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'externalUri': instance.externalUri,
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'album': instance.album.toJson(),
      'durationMs': instance.durationMs,
      'isrc': instance.isrc,
      'explicit': instance.explicit,
      'runtimeType': instance.$type,
    };

_$MeloraUserObjectImpl _$$MeloraUserObjectImplFromJson(Map json) =>
    _$MeloraUserObjectImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => MeloraImageObject.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      externalUri: json['externalUri'] as String,
    );

Map<String, dynamic> _$$MeloraUserObjectImplToJson(
        _$MeloraUserObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'externalUri': instance.externalUri,
    };

_$PluginConfigurationImpl _$$PluginConfigurationImplFromJson(Map json) =>
    _$PluginConfigurationImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      version: json['version'] as String,
      author: json['author'] as String,
      entryPoint: json['entryPoint'] as String,
      pluginApiVersion: json['pluginApiVersion'] as String,
      apis: (json['apis'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PluginApisEnumMap, e))
              .toList() ??
          const [],
      abilities: (json['abilities'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PluginAbilitiesEnumMap, e))
              .toList() ??
          const [],
      repository: json['repository'] as String?,
    );

Map<String, dynamic> _$$PluginConfigurationImplToJson(
        _$PluginConfigurationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'author': instance.author,
      'entryPoint': instance.entryPoint,
      'pluginApiVersion': instance.pluginApiVersion,
      'apis': instance.apis.map((e) => _$PluginApisEnumMap[e]!).toList(),
      'abilities':
          instance.abilities.map((e) => _$PluginAbilitiesEnumMap[e]!).toList(),
      'repository': instance.repository,
    };

const _$PluginApisEnumMap = {
  PluginApis.webview: 'webview',
  PluginApis.localstorage: 'localstorage',
  PluginApis.timezone: 'timezone',
};

const _$PluginAbilitiesEnumMap = {
  PluginAbilities.authentication: 'authentication',
  PluginAbilities.scrobbling: 'scrobbling',
  PluginAbilities.metadata: 'metadata',
  PluginAbilities.audioSource: 'audio-source',
};

_$PluginUpdateAvailableImpl _$$PluginUpdateAvailableImplFromJson(Map json) =>
    _$PluginUpdateAvailableImpl(
      downloadUrl: json['downloadUrl'] as String,
      version: json['version'] as String,
      changelog: json['changelog'] as String?,
    );

Map<String, dynamic> _$$PluginUpdateAvailableImplToJson(
        _$PluginUpdateAvailableImpl instance) =>
    <String, dynamic>{
      'downloadUrl': instance.downloadUrl,
      'version': instance.version,
      'changelog': instance.changelog,
    };

_$MetadataPluginRepositoryImpl _$$MetadataPluginRepositoryImplFromJson(
        Map json) =>
    _$MetadataPluginRepositoryImpl(
      name: json['name'] as String,
      owner: json['owner'] as String,
      description: json['description'] as String,
      repoUrl: json['repoUrl'] as String,
      topics:
          (json['topics'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MetadataPluginRepositoryImplToJson(
        _$MetadataPluginRepositoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'description': instance.description,
      'repoUrl': instance.repoUrl,
      'topics': instance.topics,
    };
