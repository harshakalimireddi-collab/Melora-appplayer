part of 'metadata.dart';

@freezed
class MeloraTrackObject with _$MeloraTrackObject {
  factory MeloraTrackObject.local({
    required String id,
    required String name,
    required String externalUri,
    @Default([]) List<MeloraSimpleArtistObject> artists,
    required MeloraSimpleAlbumObject album,
    required int durationMs,
    required String path,
  }) = MeloraLocalTrackObject;

  factory MeloraTrackObject.full({
    required String id,
    required String name,
    required String externalUri,
    @Default([]) List<MeloraSimpleArtistObject> artists,
    required MeloraSimpleAlbumObject album,
    required int durationMs,
    required String isrc,
    required bool explicit,
  }) = MeloraFullTrackObject;

  factory MeloraTrackObject.localTrackFromFile(
    File file, {
    Metadata? metadata,
    String? art,
  }) {
    return MeloraLocalTrackObject(
      id: file.absolute.path,
      name: metadata?.title ?? basenameWithoutExtension(file.path),
      externalUri: "file://${file.absolute.path}",
      artists: metadata?.artist?.split(",").map((a) {
            return MeloraSimpleArtistObject(
              id: a.trim(),
              name: a.trim(),
              externalUri: "file://${file.absolute.path}",
            );
          }).toList() ??
          [
            MeloraSimpleArtistObject(
              id: "unknown",
              name: "Unknown Artist",
              externalUri: "file://${file.absolute.path}",
            ),
          ],
      album: MeloraSimpleAlbumObject(
        albumType: MeloraAlbumType.album,
        id: metadata?.album ?? "unknown",
        name: metadata?.album ?? "Unknown Album",
        externalUri: "file://${file.absolute.path}",
        artists: [
          MeloraSimpleArtistObject(
            id: metadata?.albumArtist ?? "unknown",
            name: metadata?.albumArtist ?? "Unknown Artist",
            externalUri: "file://${file.absolute.path}",
          ),
        ],
        releaseDate:
            metadata?.year != null ? "${metadata!.year}-01-01" : "1970-01-01",
        images: [
          if (art != null)
            MeloraImageObject(
              url: art,
              width: 300,
              height: 300,
            ),
        ],
      ),
      durationMs: metadata?.durationMs?.toInt() ?? 0,
      path: file.path,
    );
  }

  factory MeloraTrackObject.fromJson(Map<String, dynamic> json) =>
      _$MeloraTrackObjectFromJson(
        json.containsKey("path")
            ? {...json, "runtimeType": "local"}
            : {...json, "runtimeType": "full"},
      );
}

extension AsMediaListMeloraTrackObject on Iterable<MeloraTrackObject> {
  List<MeloraMedia> asMediaList() {
    return map((track) => MeloraMedia(track)).toList();
  }
}

extension ToMetadataMeloraFullTrackObject on MeloraFullTrackObject {
  Metadata toMetadata({
    required int fileLength,
    Uint8List? imageBytes,
    String? mimeType,
  }) {
    return Metadata(
      title: name,
      artist: artists.map((a) => a.name).join(", "),
      album: album.name,
      albumArtist: artists.map((a) => a.name).join(", "),
      year: album.releaseDate == null
          ? 1970
          : DateTime.tryParse(album.releaseDate!)?.year ??
              int.tryParse(album.releaseDate!) ??
              1970,
      durationMs: durationMs.toDouble(),
      fileSize: BigInt.from(fileLength),
      picture: imageBytes != null
          ? Picture(
              data: imageBytes,
              mimeType: mimeType ??
                  lookupMimeType("", headerBytes: imageBytes) ??
                  "image/jpeg",
            )
          : null,
    );
  }
}
