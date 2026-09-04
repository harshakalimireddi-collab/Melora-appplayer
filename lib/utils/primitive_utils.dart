import 'dart:math';
import 'package:uuid/uuid.dart';

abstract class PrimitiveUtils {
  static bool containsTextInBracket(String matcher, String text) {
    final allMatches = RegExp(r"(?<=\().+?(?=\))").allMatches(matcher);
    if (allMatches.isEmpty) return false;
    return allMatches
        .map((e) => e.group(0))
        .every((match) => match?.contains(text) ?? false);
  }

  static final Random _random = Random();
  static T getRandomElement<T>(List<T> list) {
    return list[_random.nextInt(list.length)];
  }

  static const uuid = Uuid();

  static String toReadableNumber(double num) {
    if (num >= 1000 && num < 100000) {
      return "${(num / 1000).toStringAsFixed(0)}K";
    } else if (num >= 100000 && num < 1000000) {
      return "${(num / 1000).toStringAsFixed(0)}K";
    } else if (num >= 1000000 && num < 1000000000) {
      return "${(num / 1000000).toStringAsFixed(0)}M";
    } else if (num >= 1000000000) {
      return "${(num / 1000000000).toStringAsFixed(0)}B";
    } else {
      return num.toStringAsFixed(0);
    }
  }

  static Future<T> raceMultiple<T>(
    Future<T> Function() inner, {
    Duration timeout = const Duration(milliseconds: 2500),
    int retryCount = 4,
  }) async {
    for (int i = 0; i < retryCount; i++) {
      try {
        return await inner().timeout(timeout);
      } catch (e) {
        if (i == retryCount - 1) rethrow;
      }
    }
    throw StateError('raceMultiple: no retries remaining');
  }

  static String toSafeFileName(String str) {
    return str.replaceAll(RegExp(r'[/\?%*:|"<>]'), ' ');
  }
}
