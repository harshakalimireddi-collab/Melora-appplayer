import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script/values.dart';
import 'package:melora/models/metadata/metadata.dart';

class MetadataPluginArtistEndpoint {
  final Hetu hetu;
  MetadataPluginArtistEndpoint(this.hetu);

  HTInstance get hetuMetadataArtist =>
      (hetu.fetch("metadataPlugin") as HTInstance).memberGet("artist")
          as HTInstance;

  Future<MeloraFullArtistObject> getArtist(String id) async {
    final raw = await hetuMetadataArtist
        .invoke("getArtist", positionalArgs: [id]) as Map;

    return MeloraFullArtistObject.fromJson(
      raw.cast<String, dynamic>(),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraFullTrackObject>> topTracks(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataArtist.invoke(
      "topTracks",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraFullTrackObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) => MeloraFullTrackObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraSimpleAlbumObject>> albums(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataArtist.invoke(
      "albums",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraSimpleAlbumObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) => MeloraSimpleAlbumObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }

  Future<void> save(List<String> ids) async {
    await hetuMetadataArtist.invoke(
      "save",
      positionalArgs: [ids],
    );
  }

  Future<void> unsave(List<String> ids) async {
    await hetuMetadataArtist.invoke(
      "unsave",
      positionalArgs: [ids],
    );
  }

  Future<MeloraPaginationResponseObject<MeloraFullArtistObject>> related(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataArtist.invoke(
      "related",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit ?? 20,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraFullArtistObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) => MeloraFullArtistObject.fromJson(
        json.cast<String, dynamic>(),
      ),
    );
  }
}
