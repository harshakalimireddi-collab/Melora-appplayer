import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script/values.dart';
import 'package:melora/models/metadata/metadata.dart';

class MetadataPluginBrowseEndpoint {
  final Hetu hetu;
  MetadataPluginBrowseEndpoint(this.hetu);

  HTInstance get hetuMetadataBrowse =>
      (hetu.fetch("metadataPlugin") as HTInstance).memberGet("browse")
          as HTInstance;

  Future<MeloraPaginationResponseObject<MeloraBrowseSectionObject<Object>>>
      sections({
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataBrowse.invoke(
      "sections",
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<
        MeloraBrowseSectionObject<Object>>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) => MeloraBrowseSectionObject<Object>.fromJson(
        json.cast<String, dynamic>(),
        (json) {
          final isPlaylist = json["owner"] != null;
          final isAlbum = json["artists"] != null;
          if (isPlaylist) {
            return MeloraSimplePlaylistObject.fromJson(
              json.cast<String, dynamic>(),
            );
          } else if (isAlbum) {
            return MeloraSimpleAlbumObject.fromJson(
              json.cast<String, dynamic>(),
            );
          } else {
            return MeloraFullArtistObject.fromJson(
              json.cast<String, dynamic>(),
            );
          }
        },
      ),
    );
  }

  Future<MeloraPaginationResponseObject<Object>> sectionItems(
    String id, {
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataBrowse.invoke(
      "sectionItems",
      positionalArgs: [id],
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<Object>.fromJson(
      raw.cast<String, dynamic>(),
      (json) {
        final isPlaylist = json["owner"] != null;
        final isAlbum = json["artists"] != null;
        if (isPlaylist) {
          return MeloraSimplePlaylistObject.fromJson(
            json.cast<String, dynamic>(),
          );
        } else if (isAlbum) {
          return MeloraSimpleAlbumObject.fromJson(
            json.cast<String, dynamic>(),
          );
        } else {
          return MeloraFullArtistObject.fromJson(
            json.cast<String, dynamic>(),
          );
        }
      },
    );
  }
}
