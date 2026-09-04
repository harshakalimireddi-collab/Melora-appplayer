import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:melora/models/database/database.dart';
import 'package:melora/models/metadata/metadata.dart';
import 'package:melora/models/playback/track_sources.dart';
import 'package:melora/provider/database/database.dart';
import 'package:melora/services/music_api/music_api.dart';
import 'package:melora/services/sourced_track/sourced_track.dart';

class MusicApiSourcedTrack {
  static Future<SourcedTrack> fetchFromTrack({
    required MeloraFullTrackObject query,
    required Ref ref,
  }) async {
    final api = MusicApiService();
    final database = ref.read(databaseProvider);

    final cachedSource = await (database.select(database.sourceMatchTable)
          ..where((s) =>
              s.trackId.equals(query.id) &
              s.sourceType.equals('music-api'))
          ..limit(1)
          ..orderBy([
            (s) =>
                OrderingTerm(expression: s.createdAt, mode: OrderingMode.desc),
          ]))
        .get()
        .then((s) => s.firstOrNull);

    if (cachedSource == null) {
      final siblings = await api.matchTrack(query);
      if (siblings.isEmpty) {
        throw TrackNotFoundError(query);
      }

      await database.into(database.sourceMatchTable).insert(
            SourceMatchTableCompanion.insert(
              trackId: query.id,
              sourceInfo: Value(jsonEncode(siblings.first)),
              sourceType: 'music-api',
            ),
          );

      final manifest = await api.getStreams(siblings.first);

      return SourcedTrack(
        ref: ref,
        siblings: siblings.skip(1).toList(),
        info: siblings.first,
        source: 'music-api',
        sources: manifest,
        query: query,
      );
    }

    final item = MeloraAudioSourceMatchObject.fromJson(
      jsonDecode(cachedSource.sourceInfo),
    );
    final manifest = await api.getStreams(item);

    return SourcedTrack(
      ref: ref,
      siblings: [],
      sources: manifest,
      info: item,
      query: query,
      source: 'music-api',
    );
  }
}
