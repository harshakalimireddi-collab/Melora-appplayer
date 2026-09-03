part of '../database.dart';

class ColorConverter extends TypeConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromSql(int fromDb) {
    return Color(fromDb);
  }

  @override
  int toSql(Color value) {
    return value.toARGB32();
  }
}

class MeloraColorConverter extends TypeConverter<MeloraColor, String> {
  const MeloraColorConverter();

  @override
  MeloraColor fromSql(String fromDb) {
    return MeloraColor.fromString(fromDb);
  }

  @override
  String toSql(MeloraColor value) {
    return value.toString();
  }
}
