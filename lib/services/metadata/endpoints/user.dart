import 'package:hetu_script/hetu_script.dart';
import 'package:hetu_script/values.dart';
import 'package:melora/models/metadata/metadata.dart';

class MetadataPluginUserEndpoint {
  final Hetu hetu;
  MetadataPluginUserEndpoint(this.hetu);

  HTInstance get hetuMetadataUser =>
      (hetu.fetch("metadataPlugin") as HTInstance).memberGet("user")
          as HTInstance;

  Future<MeloraUserObject> me() async {
    final raw = await hetuMetadataUser.invoke("me") as Map;

    return MeloraUserObject.fromJson(
      raw.cast<String, dynamic>(),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraFullTrackObject>> savedTracks({
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataUser.invoke(
      "savedTracks",
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

  Future<MeloraPaginationResponseObject<MeloraSimplePlaylistObject>>
      savedPlaylists({
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataUser.invoke(
      "savedPlaylists",
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<
        MeloraSimplePlaylistObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) =>
          MeloraSimplePlaylistObject.fromJson(json.cast<String, dynamic>()),
    );
  }

  Future<MeloraPaginationResponseObject<MeloraSimpleAlbumObject>>
      savedAlbums({
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataUser.invoke(
      "savedAlbums",
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

  Future<MeloraPaginationResponseObject<MeloraFullArtistObject>>
      savedArtists({
    int? offset,
    int? limit,
  }) async {
    final raw = await hetuMetadataUser.invoke(
      "savedArtists",
      namedArgs: {
        "offset": offset,
        "limit": limit,
      }..removeWhere((key, value) => value == null),
    ) as Map;

    return MeloraPaginationResponseObject<MeloraFullArtistObject>.fromJson(
      raw.cast<String, dynamic>(),
      (Map json) =>
          MeloraFullArtistObject.fromJson(json.cast<String, dynamic>()),
    );
  }

  Future<bool> isSavedPlaylist(String playlistId) async {
    return await hetuMetadataUser.invoke(
      "isSavedPlaylist",
      positionalArgs: [playlistId],
    ) as bool;
  }

  Future<List<bool>> isSavedTracks(List<String> ids) async {
    final values = await hetuMetadataUser.invoke(
      "isSavedTracks",
      positionalArgs: [ids],
    );
    return (values as List).cast<bool>();
  }

  Future<List<bool>> isSavedAlbums(List<String> ids) async {
    final values = await hetuMetadataUser.invoke(
      "isSavedAlbums",
      positionalArgs: [ids],
    ) as List;
    return values.cast<bool>();
  }

  Future<List<bool>> isSavedArtists(List<String> ids) async {
    final values = await hetuMetadataUser.invoke(
      "isSavedArtists",
      positionalArgs: [ids],
    ) as List;

    return values.cast<bool>();
  }
}
