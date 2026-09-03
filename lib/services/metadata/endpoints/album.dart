import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script/values.dart';
import 'package:melora/models/metadata/metadata.dart';

class MetadataPluginAlbumEndpoint {
  final Hetu hetu;
  MetadataPluginAlbumEndpoint(this.hetu);

  HTInstance get hetuMetadataAlbum =>
      (hetu.fetch("metadataPlugin") as HTInstance).memberGet("album")
          as HTInstance;

  Future<MeloraFullAlbumObject> getAlbum(String id) async {
    final raw =
        await hetuMetadataAlbum.invoke("getAlbum", positionalArgs: [id]) as Map;

    return MeloraFullAlbumObject.fromJson(
      raw.cast<String, dynamic>(),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraFullTrackObject>> tracks(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataAlbum.invoke(
      "tracks",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraFullTrackObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) =>
          MeloraFullTrackObject.fromJson(json.cast<String, dynamic>()),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraSimpleAlbumObject>> releases({
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataAlbum.invoke(
      "releases",
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraSimpleAlbumObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) =>
          MeloraSimpleAlbumObject.fromJson(json.cast<String, dynamic>()),
    );
  }

  Future<void> save(List<String> ids) async {
    await hetuMetadataAlbum.invoke(
      "save",
      positionalArgs: [ids],
    );
  }

  Future<void> unsave(List<String> ids) async {
    await hetuMetadataAlbum.invoke(
      "unsave",
      positionalArgs: [ids],
    );
  }
}
