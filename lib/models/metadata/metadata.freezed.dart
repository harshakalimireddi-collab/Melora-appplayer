// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeloraAudioSourceContainerPreset _$MeloraAudioSourceContainerPresetFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'lossy':
      return MeloraAudioSourceContainerPresetLossy.fromJson(json);
    case 'lossless':
      return MeloraAudioSourceContainerPresetLossless.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'type',
          'MeloraAudioSourceContainerPreset',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MeloraAudioSourceContainerPreset {
  MeloraMediaCompressionType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Object> get qualities => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)
        lossy,
    required TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)?
        lossy,
    TResult? Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)?
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)?
        lossy,
    TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)?
        lossless,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeloraAudioSourceContainerPresetLossy value)
        lossy,
    required TResult Function(MeloraAudioSourceContainerPresetLossless value)
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeloraAudioSourceContainerPresetLossy value)? lossy,
    TResult? Function(MeloraAudioSourceContainerPresetLossless value)?
        lossless,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeloraAudioSourceContainerPresetLossy value)? lossy,
    TResult Function(MeloraAudioSourceContainerPresetLossless value)? lossless,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MeloraAudioSourceContainerPreset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraAudioSourceContainerPresetCopyWith<MeloraAudioSourceContainerPreset>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraAudioSourceContainerPresetCopyWith<$Res> {
  factory $MeloraAudioSourceContainerPresetCopyWith(
          MeloraAudioSourceContainerPreset value,
          $Res Function(MeloraAudioSourceContainerPreset) then) =
      _$MeloraAudioSourceContainerPresetCopyWithImpl<$Res,
          MeloraAudioSourceContainerPreset>;
  @useResult
  $Res call({MeloraMediaCompressionType type, String name});
}

/// @nodoc
class _$MeloraAudioSourceContainerPresetCopyWithImpl<$Res,
        $Val extends MeloraAudioSourceContainerPreset>
    implements $MeloraAudioSourceContainerPresetCopyWith<$Res> {
  _$MeloraAudioSourceContainerPresetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeloraMediaCompressionType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraAudioSourceContainerPresetLossyImplCopyWith<$Res>
    implements $MeloraAudioSourceContainerPresetCopyWith<$Res> {
  factory _$$MeloraAudioSourceContainerPresetLossyImplCopyWith(
          _$MeloraAudioSourceContainerPresetLossyImpl value,
          $Res Function(_$MeloraAudioSourceContainerPresetLossyImpl) then) =
      __$$MeloraAudioSourceContainerPresetLossyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MeloraMediaCompressionType type,
      String name,
      List<MeloraAudioLossyContainerQuality> qualities});
}

/// @nodoc
class __$$MeloraAudioSourceContainerPresetLossyImplCopyWithImpl<$Res>
    extends _$MeloraAudioSourceContainerPresetCopyWithImpl<$Res,
        _$MeloraAudioSourceContainerPresetLossyImpl>
    implements _$$MeloraAudioSourceContainerPresetLossyImplCopyWith<$Res> {
  __$$MeloraAudioSourceContainerPresetLossyImplCopyWithImpl(
      _$MeloraAudioSourceContainerPresetLossyImpl _value,
      $Res Function(_$MeloraAudioSourceContainerPresetLossyImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? qualities = null,
  }) {
    return _then(_$MeloraAudioSourceContainerPresetLossyImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeloraMediaCompressionType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qualities: null == qualities
          ? _value._qualities
          : qualities // ignore: cast_nullable_to_non_nullable
              as List<MeloraAudioLossyContainerQuality>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraAudioSourceContainerPresetLossyImpl
    extends MeloraAudioSourceContainerPresetLossy {
  _$MeloraAudioSourceContainerPresetLossyImpl(
      {required this.type,
      required this.name,
      required final List<MeloraAudioLossyContainerQuality> qualities})
      : _qualities = qualities,
        super._();

  factory _$MeloraAudioSourceContainerPresetLossyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraAudioSourceContainerPresetLossyImplFromJson(json);

  @override
  final MeloraMediaCompressionType type;
  @override
  final String name;
  final List<MeloraAudioLossyContainerQuality> _qualities;
  @override
  List<MeloraAudioLossyContainerQuality> get qualities {
    if (_qualities is EqualUnmodifiableListView) return _qualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qualities);
  }

  @override
  String toString() {
    return 'MeloraAudioSourceContainerPreset.lossy(type: $type, name: $name, qualities: $qualities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraAudioSourceContainerPresetLossyImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._qualities, _qualities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, name, const DeepCollectionEquality().hash(_qualities));

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraAudioSourceContainerPresetLossyImplCopyWith<
          _$MeloraAudioSourceContainerPresetLossyImpl>
      get copyWith =>
          __$$MeloraAudioSourceContainerPresetLossyImplCopyWithImpl<
              _$MeloraAudioSourceContainerPresetLossyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)
        lossy,
    required TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)
        lossless,
  }) {
    return lossy(type, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)?
        lossy,
    TResult? Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)?
        lossless,
  }) {
    return lossy?.call(type, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)?
        lossy,
    TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)?
        lossless,
    required TResult orElse(),
  }) {
    if (lossy != null) {
      return lossy(type, name, qualities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeloraAudioSourceContainerPresetLossy value)
        lossy,
    required TResult Function(MeloraAudioSourceContainerPresetLossless value)
        lossless,
  }) {
    return lossy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeloraAudioSourceContainerPresetLossy value)? lossy,
    TResult? Function(MeloraAudioSourceContainerPresetLossless value)?
        lossless,
  }) {
    return lossy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeloraAudioSourceContainerPresetLossy value)? lossy,
    TResult Function(MeloraAudioSourceContainerPresetLossless value)? lossless,
    required TResult orElse(),
  }) {
    if (lossy != null) {
      return lossy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraAudioSourceContainerPresetLossyImplToJson(
      this,
    );
  }
}

abstract class MeloraAudioSourceContainerPresetLossy
    extends MeloraAudioSourceContainerPreset {
  factory MeloraAudioSourceContainerPresetLossy(
          {required final MeloraMediaCompressionType type,
          required final String name,
          required final List<MeloraAudioLossyContainerQuality> qualities}) =
      _$MeloraAudioSourceContainerPresetLossyImpl;
  MeloraAudioSourceContainerPresetLossy._() : super._();

  factory MeloraAudioSourceContainerPresetLossy.fromJson(
          Map<String, dynamic> json) =
      _$MeloraAudioSourceContainerPresetLossyImpl.fromJson;

  @override
  MeloraMediaCompressionType get type;
  @override
  String get name;
  @override
  List<MeloraAudioLossyContainerQuality> get qualities;

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraAudioSourceContainerPresetLossyImplCopyWith<
          _$MeloraAudioSourceContainerPresetLossyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeloraAudioSourceContainerPresetLosslessImplCopyWith<$Res>
    implements $MeloraAudioSourceContainerPresetCopyWith<$Res> {
  factory _$$MeloraAudioSourceContainerPresetLosslessImplCopyWith(
          _$MeloraAudioSourceContainerPresetLosslessImpl value,
          $Res Function(_$MeloraAudioSourceContainerPresetLosslessImpl) then) =
      __$$MeloraAudioSourceContainerPresetLosslessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MeloraMediaCompressionType type,
      String name,
      List<MeloraAudioLosslessContainerQuality> qualities});
}

/// @nodoc
class __$$MeloraAudioSourceContainerPresetLosslessImplCopyWithImpl<$Res>
    extends _$MeloraAudioSourceContainerPresetCopyWithImpl<$Res,
        _$MeloraAudioSourceContainerPresetLosslessImpl>
    implements _$$MeloraAudioSourceContainerPresetLosslessImplCopyWith<$Res> {
  __$$MeloraAudioSourceContainerPresetLosslessImplCopyWithImpl(
      _$MeloraAudioSourceContainerPresetLosslessImpl _value,
      $Res Function(_$MeloraAudioSourceContainerPresetLosslessImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? qualities = null,
  }) {
    return _then(_$MeloraAudioSourceContainerPresetLosslessImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeloraMediaCompressionType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      qualities: null == qualities
          ? _value._qualities
          : qualities // ignore: cast_nullable_to_non_nullable
              as List<MeloraAudioLosslessContainerQuality>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraAudioSourceContainerPresetLosslessImpl
    extends MeloraAudioSourceContainerPresetLossless {
  _$MeloraAudioSourceContainerPresetLosslessImpl(
      {required this.type,
      required this.name,
      required final List<MeloraAudioLosslessContainerQuality> qualities})
      : _qualities = qualities,
        super._();

  factory _$MeloraAudioSourceContainerPresetLosslessImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraAudioSourceContainerPresetLosslessImplFromJson(json);

  @override
  final MeloraMediaCompressionType type;
  @override
  final String name;
  final List<MeloraAudioLosslessContainerQuality> _qualities;
  @override
  List<MeloraAudioLosslessContainerQuality> get qualities {
    if (_qualities is EqualUnmodifiableListView) return _qualities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_qualities);
  }

  @override
  String toString() {
    return 'MeloraAudioSourceContainerPreset.lossless(type: $type, name: $name, qualities: $qualities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraAudioSourceContainerPresetLosslessImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._qualities, _qualities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, name, const DeepCollectionEquality().hash(_qualities));

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraAudioSourceContainerPresetLosslessImplCopyWith<
          _$MeloraAudioSourceContainerPresetLosslessImpl>
      get copyWith =>
          __$$MeloraAudioSourceContainerPresetLosslessImplCopyWithImpl<
                  _$MeloraAudioSourceContainerPresetLosslessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)
        lossy,
    required TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)
        lossless,
  }) {
    return lossless(type, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)?
        lossy,
    TResult? Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)?
        lossless,
  }) {
    return lossless?.call(type, name, qualities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLossyContainerQuality> qualities)?
        lossy,
    TResult Function(MeloraMediaCompressionType type, String name,
            List<MeloraAudioLosslessContainerQuality> qualities)?
        lossless,
    required TResult orElse(),
  }) {
    if (lossless != null) {
      return lossless(type, name, qualities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeloraAudioSourceContainerPresetLossy value)
        lossy,
    required TResult Function(MeloraAudioSourceContainerPresetLossless value)
        lossless,
  }) {
    return lossless(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeloraAudioSourceContainerPresetLossy value)? lossy,
    TResult? Function(MeloraAudioSourceContainerPresetLossless value)?
        lossless,
  }) {
    return lossless?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeloraAudioSourceContainerPresetLossy value)? lossy,
    TResult Function(MeloraAudioSourceContainerPresetLossless value)? lossless,
    required TResult orElse(),
  }) {
    if (lossless != null) {
      return lossless(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraAudioSourceContainerPresetLosslessImplToJson(
      this,
    );
  }
}

abstract class MeloraAudioSourceContainerPresetLossless
    extends MeloraAudioSourceContainerPreset {
  factory MeloraAudioSourceContainerPresetLossless(
      {required final MeloraMediaCompressionType type,
      required final String name,
      required final List<MeloraAudioLosslessContainerQuality>
          qualities}) = _$MeloraAudioSourceContainerPresetLosslessImpl;
  MeloraAudioSourceContainerPresetLossless._() : super._();

  factory MeloraAudioSourceContainerPresetLossless.fromJson(
          Map<String, dynamic> json) =
      _$MeloraAudioSourceContainerPresetLosslessImpl.fromJson;

  @override
  MeloraMediaCompressionType get type;
  @override
  String get name;
  @override
  List<MeloraAudioLosslessContainerQuality> get qualities;

  /// Create a copy of MeloraAudioSourceContainerPreset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraAudioSourceContainerPresetLosslessImplCopyWith<
          _$MeloraAudioSourceContainerPresetLosslessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraAudioLossyContainerQuality _$MeloraAudioLossyContainerQualityFromJson(
    Map<String, dynamic> json) {
  return _MeloraAudioLossyContainerQuality.fromJson(json);
}

/// @nodoc
mixin _$MeloraAudioLossyContainerQuality {
  int get bitrate => throw _privateConstructorUsedError;

  /// Serializes this MeloraAudioLossyContainerQuality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraAudioLossyContainerQualityCopyWith<MeloraAudioLossyContainerQuality>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraAudioLossyContainerQualityCopyWith<$Res> {
  factory $MeloraAudioLossyContainerQualityCopyWith(
          MeloraAudioLossyContainerQuality value,
          $Res Function(MeloraAudioLossyContainerQuality) then) =
      _$MeloraAudioLossyContainerQualityCopyWithImpl<$Res,
          MeloraAudioLossyContainerQuality>;
  @useResult
  $Res call({int bitrate});
}

/// @nodoc
class _$MeloraAudioLossyContainerQualityCopyWithImpl<$Res,
        $Val extends MeloraAudioLossyContainerQuality>
    implements $MeloraAudioLossyContainerQualityCopyWith<$Res> {
  _$MeloraAudioLossyContainerQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrate = null,
  }) {
    return _then(_value.copyWith(
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraAudioLossyContainerQualityImplCopyWith<$Res>
    implements $MeloraAudioLossyContainerQualityCopyWith<$Res> {
  factory _$$MeloraAudioLossyContainerQualityImplCopyWith(
          _$MeloraAudioLossyContainerQualityImpl value,
          $Res Function(_$MeloraAudioLossyContainerQualityImpl) then) =
      __$$MeloraAudioLossyContainerQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bitrate});
}

/// @nodoc
class __$$MeloraAudioLossyContainerQualityImplCopyWithImpl<$Res>
    extends _$MeloraAudioLossyContainerQualityCopyWithImpl<$Res,
        _$MeloraAudioLossyContainerQualityImpl>
    implements _$$MeloraAudioLossyContainerQualityImplCopyWith<$Res> {
  __$$MeloraAudioLossyContainerQualityImplCopyWithImpl(
      _$MeloraAudioLossyContainerQualityImpl _value,
      $Res Function(_$MeloraAudioLossyContainerQualityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrate = null,
  }) {
    return _then(_$MeloraAudioLossyContainerQualityImpl(
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraAudioLossyContainerQualityImpl
    extends _MeloraAudioLossyContainerQuality {
  _$MeloraAudioLossyContainerQualityImpl({required this.bitrate}) : super._();

  factory _$MeloraAudioLossyContainerQualityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraAudioLossyContainerQualityImplFromJson(json);

  @override
  final int bitrate;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraAudioLossyContainerQualityImpl &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bitrate);

  /// Create a copy of MeloraAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraAudioLossyContainerQualityImplCopyWith<
          _$MeloraAudioLossyContainerQualityImpl>
      get copyWith => __$$MeloraAudioLossyContainerQualityImplCopyWithImpl<
          _$MeloraAudioLossyContainerQualityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraAudioLossyContainerQualityImplToJson(
      this,
    );
  }
}

abstract class _MeloraAudioLossyContainerQuality
    extends MeloraAudioLossyContainerQuality {
  factory _MeloraAudioLossyContainerQuality({required final int bitrate}) =
      _$MeloraAudioLossyContainerQualityImpl;
  _MeloraAudioLossyContainerQuality._() : super._();

  factory _MeloraAudioLossyContainerQuality.fromJson(
          Map<String, dynamic> json) =
      _$MeloraAudioLossyContainerQualityImpl.fromJson;

  @override
  int get bitrate;

  /// Create a copy of MeloraAudioLossyContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraAudioLossyContainerQualityImplCopyWith<
          _$MeloraAudioLossyContainerQualityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraAudioLosslessContainerQuality
    _$MeloraAudioLosslessContainerQualityFromJson(Map<String, dynamic> json) {
  return _MeloraAudioLosslessContainerQuality.fromJson(json);
}

/// @nodoc
mixin _$MeloraAudioLosslessContainerQuality {
  int get bitDepth => throw _privateConstructorUsedError; // bit
  int get sampleRate => throw _privateConstructorUsedError;

  /// Serializes this MeloraAudioLosslessContainerQuality to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraAudioLosslessContainerQualityCopyWith<
          MeloraAudioLosslessContainerQuality>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraAudioLosslessContainerQualityCopyWith<$Res> {
  factory $MeloraAudioLosslessContainerQualityCopyWith(
          MeloraAudioLosslessContainerQuality value,
          $Res Function(MeloraAudioLosslessContainerQuality) then) =
      _$MeloraAudioLosslessContainerQualityCopyWithImpl<$Res,
          MeloraAudioLosslessContainerQuality>;
  @useResult
  $Res call({int bitDepth, int sampleRate});
}

/// @nodoc
class _$MeloraAudioLosslessContainerQualityCopyWithImpl<$Res,
        $Val extends MeloraAudioLosslessContainerQuality>
    implements $MeloraAudioLosslessContainerQualityCopyWith<$Res> {
  _$MeloraAudioLosslessContainerQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitDepth = null,
    Object? sampleRate = null,
  }) {
    return _then(_value.copyWith(
      bitDepth: null == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int,
      sampleRate: null == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraAudioLosslessContainerQualityImplCopyWith<$Res>
    implements $MeloraAudioLosslessContainerQualityCopyWith<$Res> {
  factory _$$MeloraAudioLosslessContainerQualityImplCopyWith(
          _$MeloraAudioLosslessContainerQualityImpl value,
          $Res Function(_$MeloraAudioLosslessContainerQualityImpl) then) =
      __$$MeloraAudioLosslessContainerQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bitDepth, int sampleRate});
}

/// @nodoc
class __$$MeloraAudioLosslessContainerQualityImplCopyWithImpl<$Res>
    extends _$MeloraAudioLosslessContainerQualityCopyWithImpl<$Res,
        _$MeloraAudioLosslessContainerQualityImpl>
    implements _$$MeloraAudioLosslessContainerQualityImplCopyWith<$Res> {
  __$$MeloraAudioLosslessContainerQualityImplCopyWithImpl(
      _$MeloraAudioLosslessContainerQualityImpl _value,
      $Res Function(_$MeloraAudioLosslessContainerQualityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitDepth = null,
    Object? sampleRate = null,
  }) {
    return _then(_$MeloraAudioLosslessContainerQualityImpl(
      bitDepth: null == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int,
      sampleRate: null == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraAudioLosslessContainerQualityImpl
    extends _MeloraAudioLosslessContainerQuality {
  _$MeloraAudioLosslessContainerQualityImpl(
      {required this.bitDepth, required this.sampleRate})
      : super._();

  factory _$MeloraAudioLosslessContainerQualityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraAudioLosslessContainerQualityImplFromJson(json);

  @override
  final int bitDepth;
// bit
  @override
  final int sampleRate;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraAudioLosslessContainerQualityImpl &&
            (identical(other.bitDepth, bitDepth) ||
                other.bitDepth == bitDepth) &&
            (identical(other.sampleRate, sampleRate) ||
                other.sampleRate == sampleRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, bitDepth, sampleRate);

  /// Create a copy of MeloraAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraAudioLosslessContainerQualityImplCopyWith<
          _$MeloraAudioLosslessContainerQualityImpl>
      get copyWith => __$$MeloraAudioLosslessContainerQualityImplCopyWithImpl<
          _$MeloraAudioLosslessContainerQualityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraAudioLosslessContainerQualityImplToJson(
      this,
    );
  }
}

abstract class _MeloraAudioLosslessContainerQuality
    extends MeloraAudioLosslessContainerQuality {
  factory _MeloraAudioLosslessContainerQuality(
          {required final int bitDepth, required final int sampleRate}) =
      _$MeloraAudioLosslessContainerQualityImpl;
  _MeloraAudioLosslessContainerQuality._() : super._();

  factory _MeloraAudioLosslessContainerQuality.fromJson(
          Map<String, dynamic> json) =
      _$MeloraAudioLosslessContainerQualityImpl.fromJson;

  @override
  int get bitDepth; // bit
  @override
  int get sampleRate;

  /// Create a copy of MeloraAudioLosslessContainerQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraAudioLosslessContainerQualityImplCopyWith<
          _$MeloraAudioLosslessContainerQualityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraAudioSourceMatchObject _$MeloraAudioSourceMatchObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraAudioSourceMatchObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraAudioSourceMatchObject {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String> get artists => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;

  /// Serializes this MeloraAudioSourceMatchObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraAudioSourceMatchObjectCopyWith<MeloraAudioSourceMatchObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraAudioSourceMatchObjectCopyWith<$Res> {
  factory $MeloraAudioSourceMatchObjectCopyWith(
          MeloraAudioSourceMatchObject value,
          $Res Function(MeloraAudioSourceMatchObject) then) =
      _$MeloraAudioSourceMatchObjectCopyWithImpl<$Res,
          MeloraAudioSourceMatchObject>;
  @useResult
  $Res call(
      {String id,
      String title,
      List<String> artists,
      Duration duration,
      String? thumbnail,
      String externalUri});
}

/// @nodoc
class _$MeloraAudioSourceMatchObjectCopyWithImpl<$Res,
        $Val extends MeloraAudioSourceMatchObject>
    implements $MeloraAudioSourceMatchObjectCopyWith<$Res> {
  _$MeloraAudioSourceMatchObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? artists = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? externalUri = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraAudioSourceMatchObjectImplCopyWith<$Res>
    implements $MeloraAudioSourceMatchObjectCopyWith<$Res> {
  factory _$$MeloraAudioSourceMatchObjectImplCopyWith(
          _$MeloraAudioSourceMatchObjectImpl value,
          $Res Function(_$MeloraAudioSourceMatchObjectImpl) then) =
      __$$MeloraAudioSourceMatchObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      List<String> artists,
      Duration duration,
      String? thumbnail,
      String externalUri});
}

/// @nodoc
class __$$MeloraAudioSourceMatchObjectImplCopyWithImpl<$Res>
    extends _$MeloraAudioSourceMatchObjectCopyWithImpl<$Res,
        _$MeloraAudioSourceMatchObjectImpl>
    implements _$$MeloraAudioSourceMatchObjectImplCopyWith<$Res> {
  __$$MeloraAudioSourceMatchObjectImplCopyWithImpl(
      _$MeloraAudioSourceMatchObjectImpl _value,
      $Res Function(_$MeloraAudioSourceMatchObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? artists = null,
    Object? duration = null,
    Object? thumbnail = freezed,
    Object? externalUri = null,
  }) {
    return _then(_$MeloraAudioSourceMatchObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<String>,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraAudioSourceMatchObjectImpl
    implements _MeloraAudioSourceMatchObject {
  _$MeloraAudioSourceMatchObjectImpl(
      {required this.id,
      required this.title,
      required final List<String> artists,
      required this.duration,
      this.thumbnail,
      required this.externalUri})
      : _artists = artists;

  factory _$MeloraAudioSourceMatchObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraAudioSourceMatchObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<String> _artists;
  @override
  List<String> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final Duration duration;
  @override
  final String? thumbnail;
  @override
  final String externalUri;

  @override
  String toString() {
    return 'MeloraAudioSourceMatchObject(id: $id, title: $title, artists: $artists, duration: $duration, thumbnail: $thumbnail, externalUri: $externalUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraAudioSourceMatchObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(_artists),
      duration,
      thumbnail,
      externalUri);

  /// Create a copy of MeloraAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraAudioSourceMatchObjectImplCopyWith<
          _$MeloraAudioSourceMatchObjectImpl>
      get copyWith => __$$MeloraAudioSourceMatchObjectImplCopyWithImpl<
          _$MeloraAudioSourceMatchObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraAudioSourceMatchObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraAudioSourceMatchObject
    implements MeloraAudioSourceMatchObject {
  factory _MeloraAudioSourceMatchObject(
      {required final String id,
      required final String title,
      required final List<String> artists,
      required final Duration duration,
      final String? thumbnail,
      required final String externalUri}) = _$MeloraAudioSourceMatchObjectImpl;

  factory _MeloraAudioSourceMatchObject.fromJson(Map<String, dynamic> json) =
      _$MeloraAudioSourceMatchObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<String> get artists;
  @override
  Duration get duration;
  @override
  String? get thumbnail;
  @override
  String get externalUri;

  /// Create a copy of MeloraAudioSourceMatchObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraAudioSourceMatchObjectImplCopyWith<
          _$MeloraAudioSourceMatchObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraAudioSourceStreamObject _$MeloraAudioSourceStreamObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraAudioSourceStreamObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraAudioSourceStreamObject {
  String get url => throw _privateConstructorUsedError;
  String get container => throw _privateConstructorUsedError;
  MeloraMediaCompressionType get type => throw _privateConstructorUsedError;
  String? get codec => throw _privateConstructorUsedError;
  double? get bitrate => throw _privateConstructorUsedError;
  int? get bitDepth => throw _privateConstructorUsedError;
  double? get sampleRate => throw _privateConstructorUsedError;

  /// Serializes this MeloraAudioSourceStreamObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraAudioSourceStreamObjectCopyWith<MeloraAudioSourceStreamObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraAudioSourceStreamObjectCopyWith<$Res> {
  factory $MeloraAudioSourceStreamObjectCopyWith(
          MeloraAudioSourceStreamObject value,
          $Res Function(MeloraAudioSourceStreamObject) then) =
      _$MeloraAudioSourceStreamObjectCopyWithImpl<$Res,
          MeloraAudioSourceStreamObject>;
  @useResult
  $Res call(
      {String url,
      String container,
      MeloraMediaCompressionType type,
      String? codec,
      double? bitrate,
      int? bitDepth,
      double? sampleRate});
}

/// @nodoc
class _$MeloraAudioSourceStreamObjectCopyWithImpl<$Res,
        $Val extends MeloraAudioSourceStreamObject>
    implements $MeloraAudioSourceStreamObjectCopyWith<$Res> {
  _$MeloraAudioSourceStreamObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? container = null,
    Object? type = null,
    Object? codec = freezed,
    Object? bitrate = freezed,
    Object? bitDepth = freezed,
    Object? sampleRate = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      container: null == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeloraMediaCompressionType,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as double?,
      bitDepth: freezed == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int?,
      sampleRate: freezed == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraAudioSourceStreamObjectImplCopyWith<$Res>
    implements $MeloraAudioSourceStreamObjectCopyWith<$Res> {
  factory _$$MeloraAudioSourceStreamObjectImplCopyWith(
          _$MeloraAudioSourceStreamObjectImpl value,
          $Res Function(_$MeloraAudioSourceStreamObjectImpl) then) =
      __$$MeloraAudioSourceStreamObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String container,
      MeloraMediaCompressionType type,
      String? codec,
      double? bitrate,
      int? bitDepth,
      double? sampleRate});
}

/// @nodoc
class __$$MeloraAudioSourceStreamObjectImplCopyWithImpl<$Res>
    extends _$MeloraAudioSourceStreamObjectCopyWithImpl<$Res,
        _$MeloraAudioSourceStreamObjectImpl>
    implements _$$MeloraAudioSourceStreamObjectImplCopyWith<$Res> {
  __$$MeloraAudioSourceStreamObjectImplCopyWithImpl(
      _$MeloraAudioSourceStreamObjectImpl _value,
      $Res Function(_$MeloraAudioSourceStreamObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? container = null,
    Object? type = null,
    Object? codec = freezed,
    Object? bitrate = freezed,
    Object? bitDepth = freezed,
    Object? sampleRate = freezed,
  }) {
    return _then(_$MeloraAudioSourceStreamObjectImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      container: null == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeloraMediaCompressionType,
      codec: freezed == codec
          ? _value.codec
          : codec // ignore: cast_nullable_to_non_nullable
              as String?,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as double?,
      bitDepth: freezed == bitDepth
          ? _value.bitDepth
          : bitDepth // ignore: cast_nullable_to_non_nullable
              as int?,
      sampleRate: freezed == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraAudioSourceStreamObjectImpl
    implements _MeloraAudioSourceStreamObject {
  _$MeloraAudioSourceStreamObjectImpl(
      {required this.url,
      required this.container,
      required this.type,
      this.codec,
      this.bitrate,
      this.bitDepth,
      this.sampleRate});

  factory _$MeloraAudioSourceStreamObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraAudioSourceStreamObjectImplFromJson(json);

  @override
  final String url;
  @override
  final String container;
  @override
  final MeloraMediaCompressionType type;
  @override
  final String? codec;
  @override
  final double? bitrate;
  @override
  final int? bitDepth;
  @override
  final double? sampleRate;

  @override
  String toString() {
    return 'MeloraAudioSourceStreamObject(url: $url, container: $container, type: $type, codec: $codec, bitrate: $bitrate, bitDepth: $bitDepth, sampleRate: $sampleRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraAudioSourceStreamObjectImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.container, container) ||
                other.container == container) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.codec, codec) || other.codec == codec) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate) &&
            (identical(other.bitDepth, bitDepth) ||
                other.bitDepth == bitDepth) &&
            (identical(other.sampleRate, sampleRate) ||
                other.sampleRate == sampleRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, url, container, type, codec, bitrate, bitDepth, sampleRate);

  /// Create a copy of MeloraAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraAudioSourceStreamObjectImplCopyWith<
          _$MeloraAudioSourceStreamObjectImpl>
      get copyWith => __$$MeloraAudioSourceStreamObjectImplCopyWithImpl<
          _$MeloraAudioSourceStreamObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraAudioSourceStreamObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraAudioSourceStreamObject
    implements MeloraAudioSourceStreamObject {
  factory _MeloraAudioSourceStreamObject(
      {required final String url,
      required final String container,
      required final MeloraMediaCompressionType type,
      final String? codec,
      final double? bitrate,
      final int? bitDepth,
      final double? sampleRate}) = _$MeloraAudioSourceStreamObjectImpl;

  factory _MeloraAudioSourceStreamObject.fromJson(Map<String, dynamic> json) =
      _$MeloraAudioSourceStreamObjectImpl.fromJson;

  @override
  String get url;
  @override
  String get container;
  @override
  MeloraMediaCompressionType get type;
  @override
  String? get codec;
  @override
  double? get bitrate;
  @override
  int? get bitDepth;
  @override
  double? get sampleRate;

  /// Create a copy of MeloraAudioSourceStreamObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraAudioSourceStreamObjectImplCopyWith<
          _$MeloraAudioSourceStreamObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraFullAlbumObject _$MeloraFullAlbumObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraFullAlbumObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraFullAlbumObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<MeloraSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  List<MeloraImageObject> get images => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  int get totalTracks => throw _privateConstructorUsedError;
  MeloraAlbumType get albumType => throw _privateConstructorUsedError;
  String? get recordLabel => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;

  /// Serializes this MeloraFullAlbumObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraFullAlbumObjectCopyWith<MeloraFullAlbumObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraFullAlbumObjectCopyWith<$Res> {
  factory $MeloraFullAlbumObjectCopyWith(MeloraFullAlbumObject value,
          $Res Function(MeloraFullAlbumObject) then) =
      _$MeloraFullAlbumObjectCopyWithImpl<$Res, MeloraFullAlbumObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<MeloraSimpleArtistObject> artists,
      List<MeloraImageObject> images,
      String releaseDate,
      String externalUri,
      int totalTracks,
      MeloraAlbumType albumType,
      String? recordLabel,
      List<String>? genres});
}

/// @nodoc
class _$MeloraFullAlbumObjectCopyWithImpl<$Res,
        $Val extends MeloraFullAlbumObject>
    implements $MeloraFullAlbumObjectCopyWith<$Res> {
  _$MeloraFullAlbumObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? images = null,
    Object? releaseDate = null,
    Object? externalUri = null,
    Object? totalTracks = null,
    Object? albumType = null,
    Object? recordLabel = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleArtistObject>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as MeloraAlbumType,
      recordLabel: freezed == recordLabel
          ? _value.recordLabel
          : recordLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraFullAlbumObjectImplCopyWith<$Res>
    implements $MeloraFullAlbumObjectCopyWith<$Res> {
  factory _$$MeloraFullAlbumObjectImplCopyWith(
          _$MeloraFullAlbumObjectImpl value,
          $Res Function(_$MeloraFullAlbumObjectImpl) then) =
      __$$MeloraFullAlbumObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<MeloraSimpleArtistObject> artists,
      List<MeloraImageObject> images,
      String releaseDate,
      String externalUri,
      int totalTracks,
      MeloraAlbumType albumType,
      String? recordLabel,
      List<String>? genres});
}

/// @nodoc
class __$$MeloraFullAlbumObjectImplCopyWithImpl<$Res>
    extends _$MeloraFullAlbumObjectCopyWithImpl<$Res,
        _$MeloraFullAlbumObjectImpl>
    implements _$$MeloraFullAlbumObjectImplCopyWith<$Res> {
  __$$MeloraFullAlbumObjectImplCopyWithImpl(
      _$MeloraFullAlbumObjectImpl _value,
      $Res Function(_$MeloraFullAlbumObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artists = null,
    Object? images = null,
    Object? releaseDate = null,
    Object? externalUri = null,
    Object? totalTracks = null,
    Object? albumType = null,
    Object? recordLabel = freezed,
    Object? genres = freezed,
  }) {
    return _then(_$MeloraFullAlbumObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleArtistObject>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as MeloraAlbumType,
      recordLabel: freezed == recordLabel
          ? _value.recordLabel
          : recordLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraFullAlbumObjectImpl implements _MeloraFullAlbumObject {
  _$MeloraFullAlbumObjectImpl(
      {required this.id,
      required this.name,
      required final List<MeloraSimpleArtistObject> artists,
      final List<MeloraImageObject> images = const [],
      required this.releaseDate,
      required this.externalUri,
      required this.totalTracks,
      required this.albumType,
      this.recordLabel,
      final List<String>? genres})
      : _artists = artists,
        _images = images,
        _genres = genres;

  factory _$MeloraFullAlbumObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraFullAlbumObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<MeloraSimpleArtistObject> _artists;
  @override
  List<MeloraSimpleArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<MeloraImageObject> _images;
  @override
  @JsonKey()
  List<MeloraImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String releaseDate;
  @override
  final String externalUri;
  @override
  final int totalTracks;
  @override
  final MeloraAlbumType albumType;
  @override
  final String? recordLabel;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeloraFullAlbumObject(id: $id, name: $name, artists: $artists, images: $images, releaseDate: $releaseDate, externalUri: $externalUri, totalTracks: $totalTracks, albumType: $albumType, recordLabel: $recordLabel, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraFullAlbumObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.recordLabel, recordLabel) ||
                other.recordLabel == recordLabel) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_images),
      releaseDate,
      externalUri,
      totalTracks,
      albumType,
      recordLabel,
      const DeepCollectionEquality().hash(_genres));

  /// Create a copy of MeloraFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraFullAlbumObjectImplCopyWith<_$MeloraFullAlbumObjectImpl>
      get copyWith => __$$MeloraFullAlbumObjectImplCopyWithImpl<
          _$MeloraFullAlbumObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraFullAlbumObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraFullAlbumObject implements MeloraFullAlbumObject {
  factory _MeloraFullAlbumObject(
      {required final String id,
      required final String name,
      required final List<MeloraSimpleArtistObject> artists,
      final List<MeloraImageObject> images,
      required final String releaseDate,
      required final String externalUri,
      required final int totalTracks,
      required final MeloraAlbumType albumType,
      final String? recordLabel,
      final List<String>? genres}) = _$MeloraFullAlbumObjectImpl;

  factory _MeloraFullAlbumObject.fromJson(Map<String, dynamic> json) =
      _$MeloraFullAlbumObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<MeloraSimpleArtistObject> get artists;
  @override
  List<MeloraImageObject> get images;
  @override
  String get releaseDate;
  @override
  String get externalUri;
  @override
  int get totalTracks;
  @override
  MeloraAlbumType get albumType;
  @override
  String? get recordLabel;
  @override
  List<String>? get genres;

  /// Create a copy of MeloraFullAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraFullAlbumObjectImplCopyWith<_$MeloraFullAlbumObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraSimpleAlbumObject _$MeloraSimpleAlbumObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraSimpleAlbumObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraSimpleAlbumObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<MeloraSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  List<MeloraImageObject> get images => throw _privateConstructorUsedError;
  MeloraAlbumType get albumType => throw _privateConstructorUsedError;
  String? get releaseDate => throw _privateConstructorUsedError;

  /// Serializes this MeloraSimpleAlbumObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraSimpleAlbumObjectCopyWith<MeloraSimpleAlbumObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraSimpleAlbumObjectCopyWith<$Res> {
  factory $MeloraSimpleAlbumObjectCopyWith(MeloraSimpleAlbumObject value,
          $Res Function(MeloraSimpleAlbumObject) then) =
      _$MeloraSimpleAlbumObjectCopyWithImpl<$Res, MeloraSimpleAlbumObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraSimpleArtistObject> artists,
      List<MeloraImageObject> images,
      MeloraAlbumType albumType,
      String? releaseDate});
}

/// @nodoc
class _$MeloraSimpleAlbumObjectCopyWithImpl<$Res,
        $Val extends MeloraSimpleAlbumObject>
    implements $MeloraSimpleAlbumObjectCopyWith<$Res> {
  _$MeloraSimpleAlbumObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? images = null,
    Object? albumType = null,
    Object? releaseDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleArtistObject>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as MeloraAlbumType,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraSimpleAlbumObjectImplCopyWith<$Res>
    implements $MeloraSimpleAlbumObjectCopyWith<$Res> {
  factory _$$MeloraSimpleAlbumObjectImplCopyWith(
          _$MeloraSimpleAlbumObjectImpl value,
          $Res Function(_$MeloraSimpleAlbumObjectImpl) then) =
      __$$MeloraSimpleAlbumObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraSimpleArtistObject> artists,
      List<MeloraImageObject> images,
      MeloraAlbumType albumType,
      String? releaseDate});
}

/// @nodoc
class __$$MeloraSimpleAlbumObjectImplCopyWithImpl<$Res>
    extends _$MeloraSimpleAlbumObjectCopyWithImpl<$Res,
        _$MeloraSimpleAlbumObjectImpl>
    implements _$$MeloraSimpleAlbumObjectImplCopyWith<$Res> {
  __$$MeloraSimpleAlbumObjectImplCopyWithImpl(
      _$MeloraSimpleAlbumObjectImpl _value,
      $Res Function(_$MeloraSimpleAlbumObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? images = null,
    Object? albumType = null,
    Object? releaseDate = freezed,
  }) {
    return _then(_$MeloraSimpleAlbumObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleArtistObject>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as MeloraAlbumType,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraSimpleAlbumObjectImpl implements _MeloraSimpleAlbumObject {
  _$MeloraSimpleAlbumObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      required final List<MeloraSimpleArtistObject> artists,
      final List<MeloraImageObject> images = const [],
      required this.albumType,
      this.releaseDate})
      : _artists = artists,
        _images = images;

  factory _$MeloraSimpleAlbumObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraSimpleAlbumObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<MeloraSimpleArtistObject> _artists;
  @override
  List<MeloraSimpleArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<MeloraImageObject> _images;
  @override
  @JsonKey()
  List<MeloraImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final MeloraAlbumType albumType;
  @override
  final String? releaseDate;

  @override
  String toString() {
    return 'MeloraSimpleAlbumObject(id: $id, name: $name, externalUri: $externalUri, artists: $artists, images: $images, albumType: $albumType, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraSimpleAlbumObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      externalUri,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_images),
      albumType,
      releaseDate);

  /// Create a copy of MeloraSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraSimpleAlbumObjectImplCopyWith<_$MeloraSimpleAlbumObjectImpl>
      get copyWith => __$$MeloraSimpleAlbumObjectImplCopyWithImpl<
          _$MeloraSimpleAlbumObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraSimpleAlbumObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraSimpleAlbumObject implements MeloraSimpleAlbumObject {
  factory _MeloraSimpleAlbumObject(
      {required final String id,
      required final String name,
      required final String externalUri,
      required final List<MeloraSimpleArtistObject> artists,
      final List<MeloraImageObject> images,
      required final MeloraAlbumType albumType,
      final String? releaseDate}) = _$MeloraSimpleAlbumObjectImpl;

  factory _MeloraSimpleAlbumObject.fromJson(Map<String, dynamic> json) =
      _$MeloraSimpleAlbumObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<MeloraSimpleArtistObject> get artists;
  @override
  List<MeloraImageObject> get images;
  @override
  MeloraAlbumType get albumType;
  @override
  String? get releaseDate;

  /// Create a copy of MeloraSimpleAlbumObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraSimpleAlbumObjectImplCopyWith<_$MeloraSimpleAlbumObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraFullArtistObject _$MeloraFullArtistObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraFullArtistObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraFullArtistObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<MeloraImageObject> get images => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  int? get followers => throw _privateConstructorUsedError;

  /// Serializes this MeloraFullArtistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraFullArtistObjectCopyWith<MeloraFullArtistObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraFullArtistObjectCopyWith<$Res> {
  factory $MeloraFullArtistObjectCopyWith(MeloraFullArtistObject value,
          $Res Function(MeloraFullArtistObject) then) =
      _$MeloraFullArtistObjectCopyWithImpl<$Res, MeloraFullArtistObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraImageObject> images,
      List<String>? genres,
      int? followers});
}

/// @nodoc
class _$MeloraFullArtistObjectCopyWithImpl<$Res,
        $Val extends MeloraFullArtistObject>
    implements $MeloraFullArtistObjectCopyWith<$Res> {
  _$MeloraFullArtistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = null,
    Object? genres = freezed,
    Object? followers = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraFullArtistObjectImplCopyWith<$Res>
    implements $MeloraFullArtistObjectCopyWith<$Res> {
  factory _$$MeloraFullArtistObjectImplCopyWith(
          _$MeloraFullArtistObjectImpl value,
          $Res Function(_$MeloraFullArtistObjectImpl) then) =
      __$$MeloraFullArtistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraImageObject> images,
      List<String>? genres,
      int? followers});
}

/// @nodoc
class __$$MeloraFullArtistObjectImplCopyWithImpl<$Res>
    extends _$MeloraFullArtistObjectCopyWithImpl<$Res,
        _$MeloraFullArtistObjectImpl>
    implements _$$MeloraFullArtistObjectImplCopyWith<$Res> {
  __$$MeloraFullArtistObjectImplCopyWithImpl(
      _$MeloraFullArtistObjectImpl _value,
      $Res Function(_$MeloraFullArtistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = null,
    Object? genres = freezed,
    Object? followers = freezed,
  }) {
    return _then(_$MeloraFullArtistObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraFullArtistObjectImpl implements _MeloraFullArtistObject {
  _$MeloraFullArtistObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      final List<MeloraImageObject> images = const [],
      final List<String>? genres,
      this.followers})
      : _images = images,
        _genres = genres;

  factory _$MeloraFullArtistObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraFullArtistObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<MeloraImageObject> _images;
  @override
  @JsonKey()
  List<MeloraImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? followers;

  @override
  String toString() {
    return 'MeloraFullArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images, genres: $genres, followers: $followers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraFullArtistObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.followers, followers) ||
                other.followers == followers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      externalUri,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_genres),
      followers);

  /// Create a copy of MeloraFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraFullArtistObjectImplCopyWith<_$MeloraFullArtistObjectImpl>
      get copyWith => __$$MeloraFullArtistObjectImplCopyWithImpl<
          _$MeloraFullArtistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraFullArtistObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraFullArtistObject implements MeloraFullArtistObject {
  factory _MeloraFullArtistObject(
      {required final String id,
      required final String name,
      required final String externalUri,
      final List<MeloraImageObject> images,
      final List<String>? genres,
      final int? followers}) = _$MeloraFullArtistObjectImpl;

  factory _MeloraFullArtistObject.fromJson(Map<String, dynamic> json) =
      _$MeloraFullArtistObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<MeloraImageObject> get images;
  @override
  List<String>? get genres;
  @override
  int? get followers;

  /// Create a copy of MeloraFullArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraFullArtistObjectImplCopyWith<_$MeloraFullArtistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraSimpleArtistObject _$MeloraSimpleArtistObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraSimpleArtistObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraSimpleArtistObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<MeloraImageObject>? get images => throw _privateConstructorUsedError;

  /// Serializes this MeloraSimpleArtistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraSimpleArtistObjectCopyWith<MeloraSimpleArtistObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraSimpleArtistObjectCopyWith<$Res> {
  factory $MeloraSimpleArtistObjectCopyWith(MeloraSimpleArtistObject value,
          $Res Function(MeloraSimpleArtistObject) then) =
      _$MeloraSimpleArtistObjectCopyWithImpl<$Res, MeloraSimpleArtistObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraImageObject>? images});
}

/// @nodoc
class _$MeloraSimpleArtistObjectCopyWithImpl<$Res,
        $Val extends MeloraSimpleArtistObject>
    implements $MeloraSimpleArtistObjectCopyWith<$Res> {
  _$MeloraSimpleArtistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraSimpleArtistObjectImplCopyWith<$Res>
    implements $MeloraSimpleArtistObjectCopyWith<$Res> {
  factory _$$MeloraSimpleArtistObjectImplCopyWith(
          _$MeloraSimpleArtistObjectImpl value,
          $Res Function(_$MeloraSimpleArtistObjectImpl) then) =
      __$$MeloraSimpleArtistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraImageObject>? images});
}

/// @nodoc
class __$$MeloraSimpleArtistObjectImplCopyWithImpl<$Res>
    extends _$MeloraSimpleArtistObjectCopyWithImpl<$Res,
        _$MeloraSimpleArtistObjectImpl>
    implements _$$MeloraSimpleArtistObjectImplCopyWith<$Res> {
  __$$MeloraSimpleArtistObjectImplCopyWithImpl(
      _$MeloraSimpleArtistObjectImpl _value,
      $Res Function(_$MeloraSimpleArtistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? images = freezed,
  }) {
    return _then(_$MeloraSimpleArtistObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraSimpleArtistObjectImpl implements _MeloraSimpleArtistObject {
  _$MeloraSimpleArtistObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      final List<MeloraImageObject>? images})
      : _images = images;

  factory _$MeloraSimpleArtistObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraSimpleArtistObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<MeloraImageObject>? _images;
  @override
  List<MeloraImageObject>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeloraSimpleArtistObject(id: $id, name: $name, externalUri: $externalUri, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraSimpleArtistObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, externalUri,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of MeloraSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraSimpleArtistObjectImplCopyWith<_$MeloraSimpleArtistObjectImpl>
      get copyWith => __$$MeloraSimpleArtistObjectImplCopyWithImpl<
          _$MeloraSimpleArtistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraSimpleArtistObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraSimpleArtistObject implements MeloraSimpleArtistObject {
  factory _MeloraSimpleArtistObject(
          {required final String id,
          required final String name,
          required final String externalUri,
          final List<MeloraImageObject>? images}) =
      _$MeloraSimpleArtistObjectImpl;

  factory _MeloraSimpleArtistObject.fromJson(Map<String, dynamic> json) =
      _$MeloraSimpleArtistObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<MeloraImageObject>? get images;

  /// Create a copy of MeloraSimpleArtistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraSimpleArtistObjectImplCopyWith<_$MeloraSimpleArtistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraBrowseSectionObject<T> _$MeloraBrowseSectionObjectFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _MeloraBrowseSectionObject<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$MeloraBrowseSectionObject<T> {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  bool get browseMore => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  /// Serializes this MeloraBrowseSectionObject to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MeloraBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraBrowseSectionObjectCopyWith<T, MeloraBrowseSectionObject<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraBrowseSectionObjectCopyWith<T, $Res> {
  factory $MeloraBrowseSectionObjectCopyWith(
          MeloraBrowseSectionObject<T> value,
          $Res Function(MeloraBrowseSectionObject<T>) then) =
      _$MeloraBrowseSectionObjectCopyWithImpl<T, $Res,
          MeloraBrowseSectionObject<T>>;
  @useResult
  $Res call(
      {String id,
      String title,
      String externalUri,
      bool browseMore,
      List<T> items});
}

/// @nodoc
class _$MeloraBrowseSectionObjectCopyWithImpl<T, $Res,
        $Val extends MeloraBrowseSectionObject<T>>
    implements $MeloraBrowseSectionObjectCopyWith<T, $Res> {
  _$MeloraBrowseSectionObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? externalUri = null,
    Object? browseMore = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      browseMore: null == browseMore
          ? _value.browseMore
          : browseMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraBrowseSectionObjectImplCopyWith<T, $Res>
    implements $MeloraBrowseSectionObjectCopyWith<T, $Res> {
  factory _$$MeloraBrowseSectionObjectImplCopyWith(
          _$MeloraBrowseSectionObjectImpl<T> value,
          $Res Function(_$MeloraBrowseSectionObjectImpl<T>) then) =
      __$$MeloraBrowseSectionObjectImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String externalUri,
      bool browseMore,
      List<T> items});
}

/// @nodoc
class __$$MeloraBrowseSectionObjectImplCopyWithImpl<T, $Res>
    extends _$MeloraBrowseSectionObjectCopyWithImpl<T, $Res,
        _$MeloraBrowseSectionObjectImpl<T>>
    implements _$$MeloraBrowseSectionObjectImplCopyWith<T, $Res> {
  __$$MeloraBrowseSectionObjectImplCopyWithImpl(
      _$MeloraBrowseSectionObjectImpl<T> _value,
      $Res Function(_$MeloraBrowseSectionObjectImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MeloraBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? externalUri = null,
    Object? browseMore = null,
    Object? items = null,
  }) {
    return _then(_$MeloraBrowseSectionObjectImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      browseMore: null == browseMore
          ? _value.browseMore
          : browseMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$MeloraBrowseSectionObjectImpl<T>
    implements _MeloraBrowseSectionObject<T> {
  _$MeloraBrowseSectionObjectImpl(
      {required this.id,
      required this.title,
      required this.externalUri,
      required this.browseMore,
      required final List<T> items})
      : _items = items;

  factory _$MeloraBrowseSectionObjectImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$MeloraBrowseSectionObjectImplFromJson(json, fromJsonT);

  @override
  final String id;
  @override
  final String title;
  @override
  final String externalUri;
  @override
  final bool browseMore;
  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MeloraBrowseSectionObject<$T>(id: $id, title: $title, externalUri: $externalUri, browseMore: $browseMore, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraBrowseSectionObjectImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.browseMore, browseMore) ||
                other.browseMore == browseMore) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, externalUri,
      browseMore, const DeepCollectionEquality().hash(_items));

  /// Create a copy of MeloraBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraBrowseSectionObjectImplCopyWith<T,
          _$MeloraBrowseSectionObjectImpl<T>>
      get copyWith => __$$MeloraBrowseSectionObjectImplCopyWithImpl<T,
          _$MeloraBrowseSectionObjectImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$MeloraBrowseSectionObjectImplToJson<T>(this, toJsonT);
  }
}

abstract class _MeloraBrowseSectionObject<T>
    implements MeloraBrowseSectionObject<T> {
  factory _MeloraBrowseSectionObject(
      {required final String id,
      required final String title,
      required final String externalUri,
      required final bool browseMore,
      required final List<T> items}) = _$MeloraBrowseSectionObjectImpl<T>;

  factory _MeloraBrowseSectionObject.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$MeloraBrowseSectionObjectImpl<T>.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get externalUri;
  @override
  bool get browseMore;
  @override
  List<T> get items;

  /// Create a copy of MeloraBrowseSectionObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraBrowseSectionObjectImplCopyWith<T,
          _$MeloraBrowseSectionObjectImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

MetadataFormFieldObject _$MetadataFormFieldObjectFromJson(
    Map<String, dynamic> json) {
  switch (json['objectType']) {
    case 'input':
      return MetadataFormFieldInputObject.fromJson(json);
    case 'text':
      return MetadataFormFieldTextObject.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'objectType',
          'MetadataFormFieldObject',
          'Invalid union type "${json['objectType']}"!');
  }
}

/// @nodoc
mixin _$MetadataFormFieldObject {
  String get objectType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)
        input,
    required TResult Function(String objectType, String text) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult? Function(String objectType, String text)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult Function(String objectType, String text)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MetadataFormFieldInputObject value) input,
    required TResult Function(MetadataFormFieldTextObject value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MetadataFormFieldInputObject value)? input,
    TResult? Function(MetadataFormFieldTextObject value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MetadataFormFieldInputObject value)? input,
    TResult Function(MetadataFormFieldTextObject value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MetadataFormFieldObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataFormFieldObjectCopyWith<MetadataFormFieldObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataFormFieldObjectCopyWith<$Res> {
  factory $MetadataFormFieldObjectCopyWith(MetadataFormFieldObject value,
          $Res Function(MetadataFormFieldObject) then) =
      _$MetadataFormFieldObjectCopyWithImpl<$Res, MetadataFormFieldObject>;
  @useResult
  $Res call({String objectType});
}

/// @nodoc
class _$MetadataFormFieldObjectCopyWithImpl<$Res,
        $Val extends MetadataFormFieldObject>
    implements $MetadataFormFieldObjectCopyWith<$Res> {
  _$MetadataFormFieldObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectType = null,
  }) {
    return _then(_value.copyWith(
      objectType: null == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataFormFieldInputObjectImplCopyWith<$Res>
    implements $MetadataFormFieldObjectCopyWith<$Res> {
  factory _$$MetadataFormFieldInputObjectImplCopyWith(
          _$MetadataFormFieldInputObjectImpl value,
          $Res Function(_$MetadataFormFieldInputObjectImpl) then) =
      __$$MetadataFormFieldInputObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectType,
      String id,
      FormFieldVariant variant,
      String? placeholder,
      String? defaultValue,
      bool? required,
      String? regex});
}

/// @nodoc
class __$$MetadataFormFieldInputObjectImplCopyWithImpl<$Res>
    extends _$MetadataFormFieldObjectCopyWithImpl<$Res,
        _$MetadataFormFieldInputObjectImpl>
    implements _$$MetadataFormFieldInputObjectImplCopyWith<$Res> {
  __$$MetadataFormFieldInputObjectImplCopyWithImpl(
      _$MetadataFormFieldInputObjectImpl _value,
      $Res Function(_$MetadataFormFieldInputObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectType = null,
    Object? id = null,
    Object? variant = null,
    Object? placeholder = freezed,
    Object? defaultValue = freezed,
    Object? required = freezed,
    Object? regex = freezed,
  }) {
    return _then(_$MetadataFormFieldInputObjectImpl(
      objectType: null == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      variant: null == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as FormFieldVariant,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      regex: freezed == regex
          ? _value.regex
          : regex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataFormFieldInputObjectImpl
    implements MetadataFormFieldInputObject {
  _$MetadataFormFieldInputObjectImpl(
      {required this.objectType,
      required this.id,
      this.variant = FormFieldVariant.text,
      this.placeholder,
      this.defaultValue,
      this.required,
      this.regex});

  factory _$MetadataFormFieldInputObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MetadataFormFieldInputObjectImplFromJson(json);

  @override
  final String objectType;
  @override
  final String id;
  @override
  @JsonKey()
  final FormFieldVariant variant;
  @override
  final String? placeholder;
  @override
  final String? defaultValue;
  @override
  final bool? required;
  @override
  final String? regex;

  @override
  String toString() {
    return 'MetadataFormFieldObject.input(objectType: $objectType, id: $id, variant: $variant, placeholder: $placeholder, defaultValue: $defaultValue, required: $required, regex: $regex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataFormFieldInputObjectImpl &&
            (identical(other.objectType, objectType) ||
                other.objectType == objectType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.regex, regex) || other.regex == regex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectType, id, variant,
      placeholder, defaultValue, required, regex);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataFormFieldInputObjectImplCopyWith<
          _$MetadataFormFieldInputObjectImpl>
      get copyWith => __$$MetadataFormFieldInputObjectImplCopyWithImpl<
          _$MetadataFormFieldInputObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)
        input,
    required TResult Function(String objectType, String text) text,
  }) {
    return input(
        objectType, id, variant, placeholder, defaultValue, required, regex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult? Function(String objectType, String text)? text,
  }) {
    return input?.call(
        objectType, id, variant, placeholder, defaultValue, required, regex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult Function(String objectType, String text)? text,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(
          objectType, id, variant, placeholder, defaultValue, required, regex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MetadataFormFieldInputObject value) input,
    required TResult Function(MetadataFormFieldTextObject value) text,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MetadataFormFieldInputObject value)? input,
    TResult? Function(MetadataFormFieldTextObject value)? text,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MetadataFormFieldInputObject value)? input,
    TResult Function(MetadataFormFieldTextObject value)? text,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataFormFieldInputObjectImplToJson(
      this,
    );
  }
}

abstract class MetadataFormFieldInputObject implements MetadataFormFieldObject {
  factory MetadataFormFieldInputObject(
      {required final String objectType,
      required final String id,
      final FormFieldVariant variant,
      final String? placeholder,
      final String? defaultValue,
      final bool? required,
      final String? regex}) = _$MetadataFormFieldInputObjectImpl;

  factory MetadataFormFieldInputObject.fromJson(Map<String, dynamic> json) =
      _$MetadataFormFieldInputObjectImpl.fromJson;

  @override
  String get objectType;
  String get id;
  FormFieldVariant get variant;
  String? get placeholder;
  String? get defaultValue;
  bool? get required;
  String? get regex;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataFormFieldInputObjectImplCopyWith<
          _$MetadataFormFieldInputObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MetadataFormFieldTextObjectImplCopyWith<$Res>
    implements $MetadataFormFieldObjectCopyWith<$Res> {
  factory _$$MetadataFormFieldTextObjectImplCopyWith(
          _$MetadataFormFieldTextObjectImpl value,
          $Res Function(_$MetadataFormFieldTextObjectImpl) then) =
      __$$MetadataFormFieldTextObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String objectType, String text});
}

/// @nodoc
class __$$MetadataFormFieldTextObjectImplCopyWithImpl<$Res>
    extends _$MetadataFormFieldObjectCopyWithImpl<$Res,
        _$MetadataFormFieldTextObjectImpl>
    implements _$$MetadataFormFieldTextObjectImplCopyWith<$Res> {
  __$$MetadataFormFieldTextObjectImplCopyWithImpl(
      _$MetadataFormFieldTextObjectImpl _value,
      $Res Function(_$MetadataFormFieldTextObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectType = null,
    Object? text = null,
  }) {
    return _then(_$MetadataFormFieldTextObjectImpl(
      objectType: null == objectType
          ? _value.objectType
          : objectType // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataFormFieldTextObjectImpl implements MetadataFormFieldTextObject {
  _$MetadataFormFieldTextObjectImpl(
      {required this.objectType, required this.text});

  factory _$MetadataFormFieldTextObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MetadataFormFieldTextObjectImplFromJson(json);

  @override
  final String objectType;
  @override
  final String text;

  @override
  String toString() {
    return 'MetadataFormFieldObject.text(objectType: $objectType, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataFormFieldTextObjectImpl &&
            (identical(other.objectType, objectType) ||
                other.objectType == objectType) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, objectType, text);

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataFormFieldTextObjectImplCopyWith<_$MetadataFormFieldTextObjectImpl>
      get copyWith => __$$MetadataFormFieldTextObjectImplCopyWithImpl<
          _$MetadataFormFieldTextObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)
        input,
    required TResult Function(String objectType, String text) text,
  }) {
    return text(objectType, this.text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult? Function(String objectType, String text)? text,
  }) {
    return text?.call(objectType, this.text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String objectType,
            String id,
            FormFieldVariant variant,
            String? placeholder,
            String? defaultValue,
            bool? required,
            String? regex)?
        input,
    TResult Function(String objectType, String text)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(objectType, this.text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MetadataFormFieldInputObject value) input,
    required TResult Function(MetadataFormFieldTextObject value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MetadataFormFieldInputObject value)? input,
    TResult? Function(MetadataFormFieldTextObject value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MetadataFormFieldInputObject value)? input,
    TResult Function(MetadataFormFieldTextObject value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataFormFieldTextObjectImplToJson(
      this,
    );
  }
}

abstract class MetadataFormFieldTextObject implements MetadataFormFieldObject {
  factory MetadataFormFieldTextObject(
      {required final String objectType,
      required final String text}) = _$MetadataFormFieldTextObjectImpl;

  factory MetadataFormFieldTextObject.fromJson(Map<String, dynamic> json) =
      _$MetadataFormFieldTextObjectImpl.fromJson;

  @override
  String get objectType;
  String get text;

  /// Create a copy of MetadataFormFieldObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataFormFieldTextObjectImplCopyWith<_$MetadataFormFieldTextObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraImageObject _$MeloraImageObjectFromJson(Map<String, dynamic> json) {
  return _MeloraImageObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraImageObject {
  String get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  /// Serializes this MeloraImageObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraImageObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraImageObjectCopyWith<MeloraImageObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraImageObjectCopyWith<$Res> {
  factory $MeloraImageObjectCopyWith(
          MeloraImageObject value, $Res Function(MeloraImageObject) then) =
      _$MeloraImageObjectCopyWithImpl<$Res, MeloraImageObject>;
  @useResult
  $Res call({String url, int? width, int? height});
}

/// @nodoc
class _$MeloraImageObjectCopyWithImpl<$Res, $Val extends MeloraImageObject>
    implements $MeloraImageObjectCopyWith<$Res> {
  _$MeloraImageObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraImageObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraImageObjectImplCopyWith<$Res>
    implements $MeloraImageObjectCopyWith<$Res> {
  factory _$$MeloraImageObjectImplCopyWith(_$MeloraImageObjectImpl value,
          $Res Function(_$MeloraImageObjectImpl) then) =
      __$$MeloraImageObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int? width, int? height});
}

/// @nodoc
class __$$MeloraImageObjectImplCopyWithImpl<$Res>
    extends _$MeloraImageObjectCopyWithImpl<$Res, _$MeloraImageObjectImpl>
    implements _$$MeloraImageObjectImplCopyWith<$Res> {
  __$$MeloraImageObjectImplCopyWithImpl(_$MeloraImageObjectImpl _value,
      $Res Function(_$MeloraImageObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraImageObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$MeloraImageObjectImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraImageObjectImpl implements _MeloraImageObject {
  _$MeloraImageObjectImpl({required this.url, this.width, this.height});

  factory _$MeloraImageObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraImageObjectImplFromJson(json);

  @override
  final String url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'MeloraImageObject(url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraImageObjectImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, width, height);

  /// Create a copy of MeloraImageObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraImageObjectImplCopyWith<_$MeloraImageObjectImpl> get copyWith =>
      __$$MeloraImageObjectImplCopyWithImpl<_$MeloraImageObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraImageObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraImageObject implements MeloraImageObject {
  factory _MeloraImageObject(
      {required final String url,
      final int? width,
      final int? height}) = _$MeloraImageObjectImpl;

  factory _MeloraImageObject.fromJson(Map<String, dynamic> json) =
      _$MeloraImageObjectImpl.fromJson;

  @override
  String get url;
  @override
  int? get width;
  @override
  int? get height;

  /// Create a copy of MeloraImageObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraImageObjectImplCopyWith<_$MeloraImageObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeloraPaginationResponseObject<T> _$MeloraPaginationResponseObjectFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _MeloraPaginationResponseObject<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$MeloraPaginationResponseObject<T> {
  int get limit => throw _privateConstructorUsedError;
  int? get nextOffset => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  /// Serializes this MeloraPaginationResponseObject to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MeloraPaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraPaginationResponseObjectCopyWith<T,
          MeloraPaginationResponseObject<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraPaginationResponseObjectCopyWith<T, $Res> {
  factory $MeloraPaginationResponseObjectCopyWith(
          MeloraPaginationResponseObject<T> value,
          $Res Function(MeloraPaginationResponseObject<T>) then) =
      _$MeloraPaginationResponseObjectCopyWithImpl<T, $Res,
          MeloraPaginationResponseObject<T>>;
  @useResult
  $Res call(
      {int limit, int? nextOffset, int total, bool hasMore, List<T> items});
}

/// @nodoc
class _$MeloraPaginationResponseObjectCopyWithImpl<T, $Res,
        $Val extends MeloraPaginationResponseObject<T>>
    implements $MeloraPaginationResponseObjectCopyWith<T, $Res> {
  _$MeloraPaginationResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraPaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? nextOffset = freezed,
    Object? total = null,
    Object? hasMore = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraPaginationResponseObjectImplCopyWith<T, $Res>
    implements $MeloraPaginationResponseObjectCopyWith<T, $Res> {
  factory _$$MeloraPaginationResponseObjectImplCopyWith(
          _$MeloraPaginationResponseObjectImpl<T> value,
          $Res Function(_$MeloraPaginationResponseObjectImpl<T>) then) =
      __$$MeloraPaginationResponseObjectImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int limit, int? nextOffset, int total, bool hasMore, List<T> items});
}

/// @nodoc
class __$$MeloraPaginationResponseObjectImplCopyWithImpl<T, $Res>
    extends _$MeloraPaginationResponseObjectCopyWithImpl<T, $Res,
        _$MeloraPaginationResponseObjectImpl<T>>
    implements _$$MeloraPaginationResponseObjectImplCopyWith<T, $Res> {
  __$$MeloraPaginationResponseObjectImplCopyWithImpl(
      _$MeloraPaginationResponseObjectImpl<T> _value,
      $Res Function(_$MeloraPaginationResponseObjectImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MeloraPaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? nextOffset = freezed,
    Object? total = null,
    Object? hasMore = null,
    Object? items = null,
  }) {
    return _then(_$MeloraPaginationResponseObjectImpl<T>(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      nextOffset: freezed == nextOffset
          ? _value.nextOffset
          : nextOffset // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$MeloraPaginationResponseObjectImpl<T>
    implements _MeloraPaginationResponseObject<T> {
  _$MeloraPaginationResponseObjectImpl(
      {required this.limit,
      required this.nextOffset,
      required this.total,
      required this.hasMore,
      required final List<T> items})
      : _items = items;

  factory _$MeloraPaginationResponseObjectImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$MeloraPaginationResponseObjectImplFromJson(json, fromJsonT);

  @override
  final int limit;
  @override
  final int? nextOffset;
  @override
  final int total;
  @override
  final bool hasMore;
  final List<T> _items;
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'MeloraPaginationResponseObject<$T>(limit: $limit, nextOffset: $nextOffset, total: $total, hasMore: $hasMore, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraPaginationResponseObjectImpl<T> &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.nextOffset, nextOffset) ||
                other.nextOffset == nextOffset) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, limit, nextOffset, total,
      hasMore, const DeepCollectionEquality().hash(_items));

  /// Create a copy of MeloraPaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraPaginationResponseObjectImplCopyWith<T,
          _$MeloraPaginationResponseObjectImpl<T>>
      get copyWith => __$$MeloraPaginationResponseObjectImplCopyWithImpl<T,
          _$MeloraPaginationResponseObjectImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$MeloraPaginationResponseObjectImplToJson<T>(this, toJsonT);
  }
}

abstract class _MeloraPaginationResponseObject<T>
    implements MeloraPaginationResponseObject<T> {
  factory _MeloraPaginationResponseObject(
      {required final int limit,
      required final int? nextOffset,
      required final int total,
      required final bool hasMore,
      required final List<T> items}) = _$MeloraPaginationResponseObjectImpl<T>;

  factory _MeloraPaginationResponseObject.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$MeloraPaginationResponseObjectImpl<T>.fromJson;

  @override
  int get limit;
  @override
  int? get nextOffset;
  @override
  int get total;
  @override
  bool get hasMore;
  @override
  List<T> get items;

  /// Create a copy of MeloraPaginationResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraPaginationResponseObjectImplCopyWith<T,
          _$MeloraPaginationResponseObjectImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraFullPlaylistObject _$MeloraFullPlaylistObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraFullPlaylistObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraFullPlaylistObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  MeloraUserObject get owner => throw _privateConstructorUsedError;
  List<MeloraImageObject> get images => throw _privateConstructorUsedError;
  List<MeloraUserObject> get collaborators =>
      throw _privateConstructorUsedError;
  bool get collaborative => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;

  /// Serializes this MeloraFullPlaylistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraFullPlaylistObjectCopyWith<MeloraFullPlaylistObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraFullPlaylistObjectCopyWith<$Res> {
  factory $MeloraFullPlaylistObjectCopyWith(MeloraFullPlaylistObject value,
          $Res Function(MeloraFullPlaylistObject) then) =
      _$MeloraFullPlaylistObjectCopyWithImpl<$Res, MeloraFullPlaylistObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String externalUri,
      MeloraUserObject owner,
      List<MeloraImageObject> images,
      List<MeloraUserObject> collaborators,
      bool collaborative,
      bool public});

  $MeloraUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class _$MeloraFullPlaylistObjectCopyWithImpl<$Res,
        $Val extends MeloraFullPlaylistObject>
    implements $MeloraFullPlaylistObjectCopyWith<$Res> {
  _$MeloraFullPlaylistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
    Object? collaborators = null,
    Object? collaborative = null,
    Object? public = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as MeloraUserObject,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      collaborators: null == collaborators
          ? _value.collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<MeloraUserObject>,
      collaborative: null == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MeloraFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeloraUserObjectCopyWith<$Res> get owner {
    return $MeloraUserObjectCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeloraFullPlaylistObjectImplCopyWith<$Res>
    implements $MeloraFullPlaylistObjectCopyWith<$Res> {
  factory _$$MeloraFullPlaylistObjectImplCopyWith(
          _$MeloraFullPlaylistObjectImpl value,
          $Res Function(_$MeloraFullPlaylistObjectImpl) then) =
      __$$MeloraFullPlaylistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String externalUri,
      MeloraUserObject owner,
      List<MeloraImageObject> images,
      List<MeloraUserObject> collaborators,
      bool collaborative,
      bool public});

  @override
  $MeloraUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class __$$MeloraFullPlaylistObjectImplCopyWithImpl<$Res>
    extends _$MeloraFullPlaylistObjectCopyWithImpl<$Res,
        _$MeloraFullPlaylistObjectImpl>
    implements _$$MeloraFullPlaylistObjectImplCopyWith<$Res> {
  __$$MeloraFullPlaylistObjectImplCopyWithImpl(
      _$MeloraFullPlaylistObjectImpl _value,
      $Res Function(_$MeloraFullPlaylistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
    Object? collaborators = null,
    Object? collaborative = null,
    Object? public = null,
  }) {
    return _then(_$MeloraFullPlaylistObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as MeloraUserObject,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      collaborators: null == collaborators
          ? _value._collaborators
          : collaborators // ignore: cast_nullable_to_non_nullable
              as List<MeloraUserObject>,
      collaborative: null == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraFullPlaylistObjectImpl implements _MeloraFullPlaylistObject {
  _$MeloraFullPlaylistObjectImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.externalUri,
      required this.owner,
      final List<MeloraImageObject> images = const [],
      final List<MeloraUserObject> collaborators = const [],
      this.collaborative = false,
      this.public = false})
      : _images = images,
        _collaborators = collaborators;

  factory _$MeloraFullPlaylistObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraFullPlaylistObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String externalUri;
  @override
  final MeloraUserObject owner;
  final List<MeloraImageObject> _images;
  @override
  @JsonKey()
  List<MeloraImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<MeloraUserObject> _collaborators;
  @override
  @JsonKey()
  List<MeloraUserObject> get collaborators {
    if (_collaborators is EqualUnmodifiableListView) return _collaborators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collaborators);
  }

  @override
  @JsonKey()
  final bool collaborative;
  @override
  @JsonKey()
  final bool public;

  @override
  String toString() {
    return 'MeloraFullPlaylistObject(id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images, collaborators: $collaborators, collaborative: $collaborative, public: $public)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraFullPlaylistObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._collaborators, _collaborators) &&
            (identical(other.collaborative, collaborative) ||
                other.collaborative == collaborative) &&
            (identical(other.public, public) || other.public == public));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      externalUri,
      owner,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_collaborators),
      collaborative,
      public);

  /// Create a copy of MeloraFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraFullPlaylistObjectImplCopyWith<_$MeloraFullPlaylistObjectImpl>
      get copyWith => __$$MeloraFullPlaylistObjectImplCopyWithImpl<
          _$MeloraFullPlaylistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraFullPlaylistObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraFullPlaylistObject implements MeloraFullPlaylistObject {
  factory _MeloraFullPlaylistObject(
      {required final String id,
      required final String name,
      required final String description,
      required final String externalUri,
      required final MeloraUserObject owner,
      final List<MeloraImageObject> images,
      final List<MeloraUserObject> collaborators,
      final bool collaborative,
      final bool public}) = _$MeloraFullPlaylistObjectImpl;

  factory _MeloraFullPlaylistObject.fromJson(Map<String, dynamic> json) =
      _$MeloraFullPlaylistObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get externalUri;
  @override
  MeloraUserObject get owner;
  @override
  List<MeloraImageObject> get images;
  @override
  List<MeloraUserObject> get collaborators;
  @override
  bool get collaborative;
  @override
  bool get public;

  /// Create a copy of MeloraFullPlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraFullPlaylistObjectImplCopyWith<_$MeloraFullPlaylistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraSimplePlaylistObject _$MeloraSimplePlaylistObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraSimplePlaylistObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraSimplePlaylistObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  MeloraUserObject get owner => throw _privateConstructorUsedError;
  List<MeloraImageObject> get images => throw _privateConstructorUsedError;

  /// Serializes this MeloraSimplePlaylistObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraSimplePlaylistObjectCopyWith<MeloraSimplePlaylistObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraSimplePlaylistObjectCopyWith<$Res> {
  factory $MeloraSimplePlaylistObjectCopyWith(
          MeloraSimplePlaylistObject value,
          $Res Function(MeloraSimplePlaylistObject) then) =
      _$MeloraSimplePlaylistObjectCopyWithImpl<$Res,
          MeloraSimplePlaylistObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String externalUri,
      MeloraUserObject owner,
      List<MeloraImageObject> images});

  $MeloraUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class _$MeloraSimplePlaylistObjectCopyWithImpl<$Res,
        $Val extends MeloraSimplePlaylistObject>
    implements $MeloraSimplePlaylistObjectCopyWith<$Res> {
  _$MeloraSimplePlaylistObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as MeloraUserObject,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
    ) as $Val);
  }

  /// Create a copy of MeloraSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeloraUserObjectCopyWith<$Res> get owner {
    return $MeloraUserObjectCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeloraSimplePlaylistObjectImplCopyWith<$Res>
    implements $MeloraSimplePlaylistObjectCopyWith<$Res> {
  factory _$$MeloraSimplePlaylistObjectImplCopyWith(
          _$MeloraSimplePlaylistObjectImpl value,
          $Res Function(_$MeloraSimplePlaylistObjectImpl) then) =
      __$$MeloraSimplePlaylistObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String externalUri,
      MeloraUserObject owner,
      List<MeloraImageObject> images});

  @override
  $MeloraUserObjectCopyWith<$Res> get owner;
}

/// @nodoc
class __$$MeloraSimplePlaylistObjectImplCopyWithImpl<$Res>
    extends _$MeloraSimplePlaylistObjectCopyWithImpl<$Res,
        _$MeloraSimplePlaylistObjectImpl>
    implements _$$MeloraSimplePlaylistObjectImplCopyWith<$Res> {
  __$$MeloraSimplePlaylistObjectImplCopyWithImpl(
      _$MeloraSimplePlaylistObjectImpl _value,
      $Res Function(_$MeloraSimplePlaylistObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? externalUri = null,
    Object? owner = null,
    Object? images = null,
  }) {
    return _then(_$MeloraSimplePlaylistObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as MeloraUserObject,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraSimplePlaylistObjectImpl
    implements _MeloraSimplePlaylistObject {
  _$MeloraSimplePlaylistObjectImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.externalUri,
      required this.owner,
      final List<MeloraImageObject> images = const []})
      : _images = images;

  factory _$MeloraSimplePlaylistObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraSimplePlaylistObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String externalUri;
  @override
  final MeloraUserObject owner;
  final List<MeloraImageObject> _images;
  @override
  @JsonKey()
  List<MeloraImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'MeloraSimplePlaylistObject(id: $id, name: $name, description: $description, externalUri: $externalUri, owner: $owner, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraSimplePlaylistObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      externalUri, owner, const DeepCollectionEquality().hash(_images));

  /// Create a copy of MeloraSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraSimplePlaylistObjectImplCopyWith<_$MeloraSimplePlaylistObjectImpl>
      get copyWith => __$$MeloraSimplePlaylistObjectImplCopyWithImpl<
          _$MeloraSimplePlaylistObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraSimplePlaylistObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraSimplePlaylistObject
    implements MeloraSimplePlaylistObject {
  factory _MeloraSimplePlaylistObject(
          {required final String id,
          required final String name,
          required final String description,
          required final String externalUri,
          required final MeloraUserObject owner,
          final List<MeloraImageObject> images}) =
      _$MeloraSimplePlaylistObjectImpl;

  factory _MeloraSimplePlaylistObject.fromJson(Map<String, dynamic> json) =
      _$MeloraSimplePlaylistObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get externalUri;
  @override
  MeloraUserObject get owner;
  @override
  List<MeloraImageObject> get images;

  /// Create a copy of MeloraSimplePlaylistObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraSimplePlaylistObjectImplCopyWith<_$MeloraSimplePlaylistObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraSearchResponseObject _$MeloraSearchResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _MeloraSearchResponseObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraSearchResponseObject {
  List<MeloraSimpleAlbumObject> get albums =>
      throw _privateConstructorUsedError;
  List<MeloraFullArtistObject> get artists =>
      throw _privateConstructorUsedError;
  List<MeloraSimplePlaylistObject> get playlists =>
      throw _privateConstructorUsedError;
  List<MeloraFullTrackObject> get tracks => throw _privateConstructorUsedError;

  /// Serializes this MeloraSearchResponseObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraSearchResponseObjectCopyWith<MeloraSearchResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraSearchResponseObjectCopyWith<$Res> {
  factory $MeloraSearchResponseObjectCopyWith(
          MeloraSearchResponseObject value,
          $Res Function(MeloraSearchResponseObject) then) =
      _$MeloraSearchResponseObjectCopyWithImpl<$Res,
          MeloraSearchResponseObject>;
  @useResult
  $Res call(
      {List<MeloraSimpleAlbumObject> albums,
      List<MeloraFullArtistObject> artists,
      List<MeloraSimplePlaylistObject> playlists,
      List<MeloraFullTrackObject> tracks});
}

/// @nodoc
class _$MeloraSearchResponseObjectCopyWithImpl<$Res,
        $Val extends MeloraSearchResponseObject>
    implements $MeloraSearchResponseObjectCopyWith<$Res> {
  _$MeloraSearchResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
    Object? artists = null,
    Object? playlists = null,
    Object? tracks = null,
  }) {
    return _then(_value.copyWith(
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleAlbumObject>,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraFullArtistObject>,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimplePlaylistObject>,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<MeloraFullTrackObject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraSearchResponseObjectImplCopyWith<$Res>
    implements $MeloraSearchResponseObjectCopyWith<$Res> {
  factory _$$MeloraSearchResponseObjectImplCopyWith(
          _$MeloraSearchResponseObjectImpl value,
          $Res Function(_$MeloraSearchResponseObjectImpl) then) =
      __$$MeloraSearchResponseObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MeloraSimpleAlbumObject> albums,
      List<MeloraFullArtistObject> artists,
      List<MeloraSimplePlaylistObject> playlists,
      List<MeloraFullTrackObject> tracks});
}

/// @nodoc
class __$$MeloraSearchResponseObjectImplCopyWithImpl<$Res>
    extends _$MeloraSearchResponseObjectCopyWithImpl<$Res,
        _$MeloraSearchResponseObjectImpl>
    implements _$$MeloraSearchResponseObjectImplCopyWith<$Res> {
  __$$MeloraSearchResponseObjectImplCopyWithImpl(
      _$MeloraSearchResponseObjectImpl _value,
      $Res Function(_$MeloraSearchResponseObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albums = null,
    Object? artists = null,
    Object? playlists = null,
    Object? tracks = null,
  }) {
    return _then(_$MeloraSearchResponseObjectImpl(
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleAlbumObject>,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraFullArtistObject>,
      playlists: null == playlists
          ? _value._playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimplePlaylistObject>,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<MeloraFullTrackObject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraSearchResponseObjectImpl
    implements _MeloraSearchResponseObject {
  _$MeloraSearchResponseObjectImpl(
      {required final List<MeloraSimpleAlbumObject> albums,
      required final List<MeloraFullArtistObject> artists,
      required final List<MeloraSimplePlaylistObject> playlists,
      required final List<MeloraFullTrackObject> tracks})
      : _albums = albums,
        _artists = artists,
        _playlists = playlists,
        _tracks = tracks;

  factory _$MeloraSearchResponseObjectImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MeloraSearchResponseObjectImplFromJson(json);

  final List<MeloraSimpleAlbumObject> _albums;
  @override
  List<MeloraSimpleAlbumObject> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  final List<MeloraFullArtistObject> _artists;
  @override
  List<MeloraFullArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<MeloraSimplePlaylistObject> _playlists;
  @override
  List<MeloraSimplePlaylistObject> get playlists {
    if (_playlists is EqualUnmodifiableListView) return _playlists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playlists);
  }

  final List<MeloraFullTrackObject> _tracks;
  @override
  List<MeloraFullTrackObject> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  @override
  String toString() {
    return 'MeloraSearchResponseObject(albums: $albums, artists: $artists, playlists: $playlists, tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraSearchResponseObjectImpl &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._playlists, _playlists) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_playlists),
      const DeepCollectionEquality().hash(_tracks));

  /// Create a copy of MeloraSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraSearchResponseObjectImplCopyWith<_$MeloraSearchResponseObjectImpl>
      get copyWith => __$$MeloraSearchResponseObjectImplCopyWithImpl<
          _$MeloraSearchResponseObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraSearchResponseObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraSearchResponseObject
    implements MeloraSearchResponseObject {
  factory _MeloraSearchResponseObject(
          {required final List<MeloraSimpleAlbumObject> albums,
          required final List<MeloraFullArtistObject> artists,
          required final List<MeloraSimplePlaylistObject> playlists,
          required final List<MeloraFullTrackObject> tracks}) =
      _$MeloraSearchResponseObjectImpl;

  factory _MeloraSearchResponseObject.fromJson(Map<String, dynamic> json) =
      _$MeloraSearchResponseObjectImpl.fromJson;

  @override
  List<MeloraSimpleAlbumObject> get albums;
  @override
  List<MeloraFullArtistObject> get artists;
  @override
  List<MeloraSimplePlaylistObject> get playlists;
  @override
  List<MeloraFullTrackObject> get tracks;

  /// Create a copy of MeloraSearchResponseObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraSearchResponseObjectImplCopyWith<_$MeloraSearchResponseObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraTrackObject _$MeloraTrackObjectFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'local':
      return MeloraLocalTrackObject.fromJson(json);
    case 'full':
      return MeloraFullTrackObject.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MeloraTrackObject',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MeloraTrackObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;
  List<MeloraSimpleArtistObject> get artists =>
      throw _privateConstructorUsedError;
  MeloraSimpleAlbumObject get album => throw _privateConstructorUsedError;
  int get durationMs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)
        local,
    required TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)
        full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)?
        local,
    TResult? Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)?
        full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)?
        local,
    TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)?
        full,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeloraLocalTrackObject value) local,
    required TResult Function(MeloraFullTrackObject value) full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeloraLocalTrackObject value)? local,
    TResult? Function(MeloraFullTrackObject value)? full,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeloraLocalTrackObject value)? local,
    TResult Function(MeloraFullTrackObject value)? full,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this MeloraTrackObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraTrackObjectCopyWith<MeloraTrackObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraTrackObjectCopyWith<$Res> {
  factory $MeloraTrackObjectCopyWith(
          MeloraTrackObject value, $Res Function(MeloraTrackObject) then) =
      _$MeloraTrackObjectCopyWithImpl<$Res, MeloraTrackObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraSimpleArtistObject> artists,
      MeloraSimpleAlbumObject album,
      int durationMs});

  $MeloraSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class _$MeloraTrackObjectCopyWithImpl<$Res, $Val extends MeloraTrackObject>
    implements $MeloraTrackObjectCopyWith<$Res> {
  _$MeloraTrackObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleArtistObject>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as MeloraSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeloraSimpleAlbumObjectCopyWith<$Res> get album {
    return $MeloraSimpleAlbumObjectCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MeloraLocalTrackObjectImplCopyWith<$Res>
    implements $MeloraTrackObjectCopyWith<$Res> {
  factory _$$MeloraLocalTrackObjectImplCopyWith(
          _$MeloraLocalTrackObjectImpl value,
          $Res Function(_$MeloraLocalTrackObjectImpl) then) =
      __$$MeloraLocalTrackObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraSimpleArtistObject> artists,
      MeloraSimpleAlbumObject album,
      int durationMs,
      String path});

  @override
  $MeloraSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class __$$MeloraLocalTrackObjectImplCopyWithImpl<$Res>
    extends _$MeloraTrackObjectCopyWithImpl<$Res,
        _$MeloraLocalTrackObjectImpl>
    implements _$$MeloraLocalTrackObjectImplCopyWith<$Res> {
  __$$MeloraLocalTrackObjectImplCopyWithImpl(
      _$MeloraLocalTrackObjectImpl _value,
      $Res Function(_$MeloraLocalTrackObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
    Object? path = null,
  }) {
    return _then(_$MeloraLocalTrackObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleArtistObject>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as MeloraSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraLocalTrackObjectImpl implements MeloraLocalTrackObject {
  _$MeloraLocalTrackObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      final List<MeloraSimpleArtistObject> artists = const [],
      required this.album,
      required this.durationMs,
      required this.path,
      final String? $type})
      : _artists = artists,
        $type = $type ?? 'local';

  factory _$MeloraLocalTrackObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraLocalTrackObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<MeloraSimpleArtistObject> _artists;
  @override
  @JsonKey()
  List<MeloraSimpleArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final MeloraSimpleAlbumObject album;
  @override
  final int durationMs;
  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MeloraTrackObject.local(id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraLocalTrackObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, externalUri,
      const DeepCollectionEquality().hash(_artists), album, durationMs, path);

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraLocalTrackObjectImplCopyWith<_$MeloraLocalTrackObjectImpl>
      get copyWith => __$$MeloraLocalTrackObjectImplCopyWithImpl<
          _$MeloraLocalTrackObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)
        local,
    required TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)
        full,
  }) {
    return local(id, name, externalUri, artists, album, durationMs, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)?
        local,
    TResult? Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)?
        full,
  }) {
    return local?.call(id, name, externalUri, artists, album, durationMs, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)?
        local,
    TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)?
        full,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(id, name, externalUri, artists, album, durationMs, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeloraLocalTrackObject value) local,
    required TResult Function(MeloraFullTrackObject value) full,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeloraLocalTrackObject value)? local,
    TResult? Function(MeloraFullTrackObject value)? full,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeloraLocalTrackObject value)? local,
    TResult Function(MeloraFullTrackObject value)? full,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraLocalTrackObjectImplToJson(
      this,
    );
  }
}

abstract class MeloraLocalTrackObject implements MeloraTrackObject {
  factory MeloraLocalTrackObject(
      {required final String id,
      required final String name,
      required final String externalUri,
      final List<MeloraSimpleArtistObject> artists,
      required final MeloraSimpleAlbumObject album,
      required final int durationMs,
      required final String path}) = _$MeloraLocalTrackObjectImpl;

  factory MeloraLocalTrackObject.fromJson(Map<String, dynamic> json) =
      _$MeloraLocalTrackObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<MeloraSimpleArtistObject> get artists;
  @override
  MeloraSimpleAlbumObject get album;
  @override
  int get durationMs;
  String get path;

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraLocalTrackObjectImplCopyWith<_$MeloraLocalTrackObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MeloraFullTrackObjectImplCopyWith<$Res>
    implements $MeloraTrackObjectCopyWith<$Res> {
  factory _$$MeloraFullTrackObjectImplCopyWith(
          _$MeloraFullTrackObjectImpl value,
          $Res Function(_$MeloraFullTrackObjectImpl) then) =
      __$$MeloraFullTrackObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String externalUri,
      List<MeloraSimpleArtistObject> artists,
      MeloraSimpleAlbumObject album,
      int durationMs,
      String isrc,
      bool explicit});

  @override
  $MeloraSimpleAlbumObjectCopyWith<$Res> get album;
}

/// @nodoc
class __$$MeloraFullTrackObjectImplCopyWithImpl<$Res>
    extends _$MeloraTrackObjectCopyWithImpl<$Res, _$MeloraFullTrackObjectImpl>
    implements _$$MeloraFullTrackObjectImplCopyWith<$Res> {
  __$$MeloraFullTrackObjectImplCopyWithImpl(
      _$MeloraFullTrackObjectImpl _value,
      $Res Function(_$MeloraFullTrackObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? externalUri = null,
    Object? artists = null,
    Object? album = null,
    Object? durationMs = null,
    Object? isrc = null,
    Object? explicit = null,
  }) {
    return _then(_$MeloraFullTrackObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<MeloraSimpleArtistObject>,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as MeloraSimpleAlbumObject,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraFullTrackObjectImpl implements MeloraFullTrackObject {
  _$MeloraFullTrackObjectImpl(
      {required this.id,
      required this.name,
      required this.externalUri,
      final List<MeloraSimpleArtistObject> artists = const [],
      required this.album,
      required this.durationMs,
      required this.isrc,
      required this.explicit,
      final String? $type})
      : _artists = artists,
        $type = $type ?? 'full';

  factory _$MeloraFullTrackObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraFullTrackObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String externalUri;
  final List<MeloraSimpleArtistObject> _artists;
  @override
  @JsonKey()
  List<MeloraSimpleArtistObject> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final MeloraSimpleAlbumObject album;
  @override
  final int durationMs;
  @override
  final String isrc;
  @override
  final bool explicit;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MeloraTrackObject.full(id: $id, name: $name, externalUri: $externalUri, artists: $artists, album: $album, durationMs: $durationMs, isrc: $isrc, explicit: $explicit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraFullTrackObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.isrc, isrc) || other.isrc == isrc) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      externalUri,
      const DeepCollectionEquality().hash(_artists),
      album,
      durationMs,
      isrc,
      explicit);

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraFullTrackObjectImplCopyWith<_$MeloraFullTrackObjectImpl>
      get copyWith => __$$MeloraFullTrackObjectImplCopyWithImpl<
          _$MeloraFullTrackObjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)
        local,
    required TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)
        full,
  }) {
    return full(
        id, name, externalUri, artists, album, durationMs, isrc, explicit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)?
        local,
    TResult? Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)?
        full,
  }) {
    return full?.call(
        id, name, externalUri, artists, album, durationMs, isrc, explicit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String path)?
        local,
    TResult Function(
            String id,
            String name,
            String externalUri,
            List<MeloraSimpleArtistObject> artists,
            MeloraSimpleAlbumObject album,
            int durationMs,
            String isrc,
            bool explicit)?
        full,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(
          id, name, externalUri, artists, album, durationMs, isrc, explicit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MeloraLocalTrackObject value) local,
    required TResult Function(MeloraFullTrackObject value) full,
  }) {
    return full(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MeloraLocalTrackObject value)? local,
    TResult? Function(MeloraFullTrackObject value)? full,
  }) {
    return full?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MeloraLocalTrackObject value)? local,
    TResult Function(MeloraFullTrackObject value)? full,
    required TResult orElse(),
  }) {
    if (full != null) {
      return full(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraFullTrackObjectImplToJson(
      this,
    );
  }
}

abstract class MeloraFullTrackObject implements MeloraTrackObject {
  factory MeloraFullTrackObject(
      {required final String id,
      required final String name,
      required final String externalUri,
      final List<MeloraSimpleArtistObject> artists,
      required final MeloraSimpleAlbumObject album,
      required final int durationMs,
      required final String isrc,
      required final bool explicit}) = _$MeloraFullTrackObjectImpl;

  factory MeloraFullTrackObject.fromJson(Map<String, dynamic> json) =
      _$MeloraFullTrackObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get externalUri;
  @override
  List<MeloraSimpleArtistObject> get artists;
  @override
  MeloraSimpleAlbumObject get album;
  @override
  int get durationMs;
  String get isrc;
  bool get explicit;

  /// Create a copy of MeloraTrackObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraFullTrackObjectImplCopyWith<_$MeloraFullTrackObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MeloraUserObject _$MeloraUserObjectFromJson(Map<String, dynamic> json) {
  return _MeloraUserObject.fromJson(json);
}

/// @nodoc
mixin _$MeloraUserObject {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<MeloraImageObject> get images => throw _privateConstructorUsedError;
  String get externalUri => throw _privateConstructorUsedError;

  /// Serializes this MeloraUserObject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeloraUserObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeloraUserObjectCopyWith<MeloraUserObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeloraUserObjectCopyWith<$Res> {
  factory $MeloraUserObjectCopyWith(
          MeloraUserObject value, $Res Function(MeloraUserObject) then) =
      _$MeloraUserObjectCopyWithImpl<$Res, MeloraUserObject>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<MeloraImageObject> images,
      String externalUri});
}

/// @nodoc
class _$MeloraUserObjectCopyWithImpl<$Res, $Val extends MeloraUserObject>
    implements $MeloraUserObjectCopyWith<$Res> {
  _$MeloraUserObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeloraUserObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? externalUri = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeloraUserObjectImplCopyWith<$Res>
    implements $MeloraUserObjectCopyWith<$Res> {
  factory _$$MeloraUserObjectImplCopyWith(_$MeloraUserObjectImpl value,
          $Res Function(_$MeloraUserObjectImpl) then) =
      __$$MeloraUserObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<MeloraImageObject> images,
      String externalUri});
}

/// @nodoc
class __$$MeloraUserObjectImplCopyWithImpl<$Res>
    extends _$MeloraUserObjectCopyWithImpl<$Res, _$MeloraUserObjectImpl>
    implements _$$MeloraUserObjectImplCopyWith<$Res> {
  __$$MeloraUserObjectImplCopyWithImpl(_$MeloraUserObjectImpl _value,
      $Res Function(_$MeloraUserObjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeloraUserObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? images = null,
    Object? externalUri = null,
  }) {
    return _then(_$MeloraUserObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<MeloraImageObject>,
      externalUri: null == externalUri
          ? _value.externalUri
          : externalUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeloraUserObjectImpl implements _MeloraUserObject {
  _$MeloraUserObjectImpl(
      {required this.id,
      required this.name,
      final List<MeloraImageObject> images = const [],
      required this.externalUri})
      : _images = images;

  factory _$MeloraUserObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeloraUserObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<MeloraImageObject> _images;
  @override
  @JsonKey()
  List<MeloraImageObject> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String externalUri;

  @override
  String toString() {
    return 'MeloraUserObject(id: $id, name: $name, images: $images, externalUri: $externalUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeloraUserObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.externalUri, externalUri) ||
                other.externalUri == externalUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_images), externalUri);

  /// Create a copy of MeloraUserObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeloraUserObjectImplCopyWith<_$MeloraUserObjectImpl> get copyWith =>
      __$$MeloraUserObjectImplCopyWithImpl<_$MeloraUserObjectImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeloraUserObjectImplToJson(
      this,
    );
  }
}

abstract class _MeloraUserObject implements MeloraUserObject {
  factory _MeloraUserObject(
      {required final String id,
      required final String name,
      final List<MeloraImageObject> images,
      required final String externalUri}) = _$MeloraUserObjectImpl;

  factory _MeloraUserObject.fromJson(Map<String, dynamic> json) =
      _$MeloraUserObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<MeloraImageObject> get images;
  @override
  String get externalUri;

  /// Create a copy of MeloraUserObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeloraUserObjectImplCopyWith<_$MeloraUserObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PluginConfiguration _$PluginConfigurationFromJson(Map<String, dynamic> json) {
  return _PluginConfiguration.fromJson(json);
}

/// @nodoc
mixin _$PluginConfiguration {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get entryPoint => throw _privateConstructorUsedError;
  String get pluginApiVersion => throw _privateConstructorUsedError;
  List<PluginApis> get apis => throw _privateConstructorUsedError;
  List<PluginAbilities> get abilities => throw _privateConstructorUsedError;
  String? get repository => throw _privateConstructorUsedError;

  /// Serializes this PluginConfiguration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PluginConfigurationCopyWith<PluginConfiguration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PluginConfigurationCopyWith<$Res> {
  factory $PluginConfigurationCopyWith(
          PluginConfiguration value, $Res Function(PluginConfiguration) then) =
      _$PluginConfigurationCopyWithImpl<$Res, PluginConfiguration>;
  @useResult
  $Res call(
      {String name,
      String description,
      String version,
      String author,
      String entryPoint,
      String pluginApiVersion,
      List<PluginApis> apis,
      List<PluginAbilities> abilities,
      String? repository});
}

/// @nodoc
class _$PluginConfigurationCopyWithImpl<$Res, $Val extends PluginConfiguration>
    implements $PluginConfigurationCopyWith<$Res> {
  _$PluginConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? version = null,
    Object? author = null,
    Object? entryPoint = null,
    Object? pluginApiVersion = null,
    Object? apis = null,
    Object? abilities = null,
    Object? repository = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as String,
      pluginApiVersion: null == pluginApiVersion
          ? _value.pluginApiVersion
          : pluginApiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      apis: null == apis
          ? _value.apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<PluginApis>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PluginAbilities>,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PluginConfigurationImplCopyWith<$Res>
    implements $PluginConfigurationCopyWith<$Res> {
  factory _$$PluginConfigurationImplCopyWith(_$PluginConfigurationImpl value,
          $Res Function(_$PluginConfigurationImpl) then) =
      __$$PluginConfigurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String description,
      String version,
      String author,
      String entryPoint,
      String pluginApiVersion,
      List<PluginApis> apis,
      List<PluginAbilities> abilities,
      String? repository});
}

/// @nodoc
class __$$PluginConfigurationImplCopyWithImpl<$Res>
    extends _$PluginConfigurationCopyWithImpl<$Res, _$PluginConfigurationImpl>
    implements _$$PluginConfigurationImplCopyWith<$Res> {
  __$$PluginConfigurationImplCopyWithImpl(_$PluginConfigurationImpl _value,
      $Res Function(_$PluginConfigurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? version = null,
    Object? author = null,
    Object? entryPoint = null,
    Object? pluginApiVersion = null,
    Object? apis = null,
    Object? abilities = null,
    Object? repository = freezed,
  }) {
    return _then(_$PluginConfigurationImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      entryPoint: null == entryPoint
          ? _value.entryPoint
          : entryPoint // ignore: cast_nullable_to_non_nullable
              as String,
      pluginApiVersion: null == pluginApiVersion
          ? _value.pluginApiVersion
          : pluginApiVersion // ignore: cast_nullable_to_non_nullable
              as String,
      apis: null == apis
          ? _value._apis
          : apis // ignore: cast_nullable_to_non_nullable
              as List<PluginApis>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PluginAbilities>,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PluginConfigurationImpl extends _PluginConfiguration {
  _$PluginConfigurationImpl(
      {required this.name,
      required this.description,
      required this.version,
      required this.author,
      required this.entryPoint,
      required this.pluginApiVersion,
      final List<PluginApis> apis = const [],
      final List<PluginAbilities> abilities = const [],
      this.repository})
      : _apis = apis,
        _abilities = abilities,
        super._();

  factory _$PluginConfigurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PluginConfigurationImplFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String version;
  @override
  final String author;
  @override
  final String entryPoint;
  @override
  final String pluginApiVersion;
  final List<PluginApis> _apis;
  @override
  @JsonKey()
  List<PluginApis> get apis {
    if (_apis is EqualUnmodifiableListView) return _apis;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apis);
  }

  final List<PluginAbilities> _abilities;
  @override
  @JsonKey()
  List<PluginAbilities> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  final String? repository;

  @override
  String toString() {
    return 'PluginConfiguration(name: $name, description: $description, version: $version, author: $author, entryPoint: $entryPoint, pluginApiVersion: $pluginApiVersion, apis: $apis, abilities: $abilities, repository: $repository)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PluginConfigurationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.entryPoint, entryPoint) ||
                other.entryPoint == entryPoint) &&
            (identical(other.pluginApiVersion, pluginApiVersion) ||
                other.pluginApiVersion == pluginApiVersion) &&
            const DeepCollectionEquality().equals(other._apis, _apis) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            (identical(other.repository, repository) ||
                other.repository == repository));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      version,
      author,
      entryPoint,
      pluginApiVersion,
      const DeepCollectionEquality().hash(_apis),
      const DeepCollectionEquality().hash(_abilities),
      repository);

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PluginConfigurationImplCopyWith<_$PluginConfigurationImpl> get copyWith =>
      __$$PluginConfigurationImplCopyWithImpl<_$PluginConfigurationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PluginConfigurationImplToJson(
      this,
    );
  }
}

abstract class _PluginConfiguration extends PluginConfiguration {
  factory _PluginConfiguration(
      {required final String name,
      required final String description,
      required final String version,
      required final String author,
      required final String entryPoint,
      required final String pluginApiVersion,
      final List<PluginApis> apis,
      final List<PluginAbilities> abilities,
      final String? repository}) = _$PluginConfigurationImpl;
  _PluginConfiguration._() : super._();

  factory _PluginConfiguration.fromJson(Map<String, dynamic> json) =
      _$PluginConfigurationImpl.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get version;
  @override
  String get author;
  @override
  String get entryPoint;
  @override
  String get pluginApiVersion;
  @override
  List<PluginApis> get apis;
  @override
  List<PluginAbilities> get abilities;
  @override
  String? get repository;

  /// Create a copy of PluginConfiguration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PluginConfigurationImplCopyWith<_$PluginConfigurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PluginUpdateAvailable _$PluginUpdateAvailableFromJson(
    Map<String, dynamic> json) {
  return _PluginUpdateAvailable.fromJson(json);
}

/// @nodoc
mixin _$PluginUpdateAvailable {
  String get downloadUrl => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String? get changelog => throw _privateConstructorUsedError;

  /// Serializes this PluginUpdateAvailable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PluginUpdateAvailableCopyWith<PluginUpdateAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PluginUpdateAvailableCopyWith<$Res> {
  factory $PluginUpdateAvailableCopyWith(PluginUpdateAvailable value,
          $Res Function(PluginUpdateAvailable) then) =
      _$PluginUpdateAvailableCopyWithImpl<$Res, PluginUpdateAvailable>;
  @useResult
  $Res call({String downloadUrl, String version, String? changelog});
}

/// @nodoc
class _$PluginUpdateAvailableCopyWithImpl<$Res,
        $Val extends PluginUpdateAvailable>
    implements $PluginUpdateAvailableCopyWith<$Res> {
  _$PluginUpdateAvailableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? version = null,
    Object? changelog = freezed,
  }) {
    return _then(_value.copyWith(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PluginUpdateAvailableImplCopyWith<$Res>
    implements $PluginUpdateAvailableCopyWith<$Res> {
  factory _$$PluginUpdateAvailableImplCopyWith(
          _$PluginUpdateAvailableImpl value,
          $Res Function(_$PluginUpdateAvailableImpl) then) =
      __$$PluginUpdateAvailableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String downloadUrl, String version, String? changelog});
}

/// @nodoc
class __$$PluginUpdateAvailableImplCopyWithImpl<$Res>
    extends _$PluginUpdateAvailableCopyWithImpl<$Res,
        _$PluginUpdateAvailableImpl>
    implements _$$PluginUpdateAvailableImplCopyWith<$Res> {
  __$$PluginUpdateAvailableImplCopyWithImpl(_$PluginUpdateAvailableImpl _value,
      $Res Function(_$PluginUpdateAvailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadUrl = null,
    Object? version = null,
    Object? changelog = freezed,
  }) {
    return _then(_$PluginUpdateAvailableImpl(
      downloadUrl: null == downloadUrl
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      changelog: freezed == changelog
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PluginUpdateAvailableImpl implements _PluginUpdateAvailable {
  _$PluginUpdateAvailableImpl(
      {required this.downloadUrl, required this.version, this.changelog});

  factory _$PluginUpdateAvailableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PluginUpdateAvailableImplFromJson(json);

  @override
  final String downloadUrl;
  @override
  final String version;
  @override
  final String? changelog;

  @override
  String toString() {
    return 'PluginUpdateAvailable(downloadUrl: $downloadUrl, version: $version, changelog: $changelog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PluginUpdateAvailableImpl &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.changelog, changelog) ||
                other.changelog == changelog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, downloadUrl, version, changelog);

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PluginUpdateAvailableImplCopyWith<_$PluginUpdateAvailableImpl>
      get copyWith => __$$PluginUpdateAvailableImplCopyWithImpl<
          _$PluginUpdateAvailableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PluginUpdateAvailableImplToJson(
      this,
    );
  }
}

abstract class _PluginUpdateAvailable implements PluginUpdateAvailable {
  factory _PluginUpdateAvailable(
      {required final String downloadUrl,
      required final String version,
      final String? changelog}) = _$PluginUpdateAvailableImpl;

  factory _PluginUpdateAvailable.fromJson(Map<String, dynamic> json) =
      _$PluginUpdateAvailableImpl.fromJson;

  @override
  String get downloadUrl;
  @override
  String get version;
  @override
  String? get changelog;

  /// Create a copy of PluginUpdateAvailable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PluginUpdateAvailableImplCopyWith<_$PluginUpdateAvailableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MetadataPluginRepository _$MetadataPluginRepositoryFromJson(
    Map<String, dynamic> json) {
  return _MetadataPluginRepository.fromJson(json);
}

/// @nodoc
mixin _$MetadataPluginRepository {
  String get name => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get repoUrl => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;

  /// Serializes this MetadataPluginRepository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataPluginRepositoryCopyWith<MetadataPluginRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataPluginRepositoryCopyWith<$Res> {
  factory $MetadataPluginRepositoryCopyWith(MetadataPluginRepository value,
          $Res Function(MetadataPluginRepository) then) =
      _$MetadataPluginRepositoryCopyWithImpl<$Res, MetadataPluginRepository>;
  @useResult
  $Res call(
      {String name,
      String owner,
      String description,
      String repoUrl,
      List<String> topics});
}

/// @nodoc
class _$MetadataPluginRepositoryCopyWithImpl<$Res,
        $Val extends MetadataPluginRepository>
    implements $MetadataPluginRepositoryCopyWith<$Res> {
  _$MetadataPluginRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? owner = null,
    Object? description = null,
    Object? repoUrl = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      repoUrl: null == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataPluginRepositoryImplCopyWith<$Res>
    implements $MetadataPluginRepositoryCopyWith<$Res> {
  factory _$$MetadataPluginRepositoryImplCopyWith(
          _$MetadataPluginRepositoryImpl value,
          $Res Function(_$MetadataPluginRepositoryImpl) then) =
      __$$MetadataPluginRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String owner,
      String description,
      String repoUrl,
      List<String> topics});
}

/// @nodoc
class __$$MetadataPluginRepositoryImplCopyWithImpl<$Res>
    extends _$MetadataPluginRepositoryCopyWithImpl<$Res,
        _$MetadataPluginRepositoryImpl>
    implements _$$MetadataPluginRepositoryImplCopyWith<$Res> {
  __$$MetadataPluginRepositoryImplCopyWithImpl(
      _$MetadataPluginRepositoryImpl _value,
      $Res Function(_$MetadataPluginRepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? owner = null,
    Object? description = null,
    Object? repoUrl = null,
    Object? topics = null,
  }) {
    return _then(_$MetadataPluginRepositoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      repoUrl: null == repoUrl
          ? _value.repoUrl
          : repoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataPluginRepositoryImpl implements _MetadataPluginRepository {
  _$MetadataPluginRepositoryImpl(
      {required this.name,
      required this.owner,
      required this.description,
      required this.repoUrl,
      required final List<String> topics})
      : _topics = topics;

  factory _$MetadataPluginRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataPluginRepositoryImplFromJson(json);

  @override
  final String name;
  @override
  final String owner;
  @override
  final String description;
  @override
  final String repoUrl;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'MetadataPluginRepository(name: $name, owner: $owner, description: $description, repoUrl: $repoUrl, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataPluginRepositoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.repoUrl, repoUrl) || other.repoUrl == repoUrl) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, owner, description,
      repoUrl, const DeepCollectionEquality().hash(_topics));

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataPluginRepositoryImplCopyWith<_$MetadataPluginRepositoryImpl>
      get copyWith => __$$MetadataPluginRepositoryImplCopyWithImpl<
          _$MetadataPluginRepositoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataPluginRepositoryImplToJson(
      this,
    );
  }
}

abstract class _MetadataPluginRepository implements MetadataPluginRepository {
  factory _MetadataPluginRepository(
      {required final String name,
      required final String owner,
      required final String description,
      required final String repoUrl,
      required final List<String> topics}) = _$MetadataPluginRepositoryImpl;

  factory _MetadataPluginRepository.fromJson(Map<String, dynamic> json) =
      _$MetadataPluginRepositoryImpl.fromJson;

  @override
  String get name;
  @override
  String get owner;
  @override
  String get description;
  @override
  String get repoUrl;
  @override
  List<String> get topics;

  /// Create a copy of MetadataPluginRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataPluginRepositoryImplCopyWith<_$MetadataPluginRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
