part of '../database.dart';

enum HistoryEntryType {
  playlist,
  album,
  track,
}

class HistoryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  TextColumn get type => textEnum<HistoryEntryType>()();
  TextColumn get itemId => text()();
  TextColumn get data =>
      text().map(const MapTypeConverter<String, dynamic>())();
}

extension HistoryItemParseExtension on HistoryTableData {
  MeloraSimplePlaylistObject? get playlist =>
      type == HistoryEntryType.playlist && !data.containsKey("external_urls")
          ? MeloraSimplePlaylistObject.fromJson(data)
          : null;
  MeloraSimpleAlbumObject? get album =>
      type == HistoryEntryType.album && !data.containsKey("external_urls")
          ? MeloraSimpleAlbumObject.fromJson(data)
          : null;
  MeloraTrackObject? get track =>
      type == HistoryEntryType.track && !data.containsKey("external_urls")
          ? MeloraTrackObject.fromJson(data)
          : null;
}
