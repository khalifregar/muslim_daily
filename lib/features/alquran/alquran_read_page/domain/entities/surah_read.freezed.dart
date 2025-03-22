// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_read.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahRead _$SurahReadFromJson(Map<String, dynamic> json) {
  return _SurahRead.fromJson(json);
}

/// @nodoc
mixin _$SurahRead {
  Map<String, String> get audioFull => throw _privateConstructorUsedError;
  List<Ayat> get ayat => throw _privateConstructorUsedError;

  /// Serializes this SurahRead to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahReadCopyWith<SurahRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahReadCopyWith<$Res> {
  factory $SurahReadCopyWith(SurahRead value, $Res Function(SurahRead) then) =
      _$SurahReadCopyWithImpl<$Res, SurahRead>;
  @useResult
  $Res call({Map<String, String> audioFull, List<Ayat> ayat});
}

/// @nodoc
class _$SurahReadCopyWithImpl<$Res, $Val extends SurahRead>
    implements $SurahReadCopyWith<$Res> {
  _$SurahReadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFull = null,
    Object? ayat = null,
  }) {
    return _then(_value.copyWith(
      audioFull: null == audioFull
          ? _value.audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahReadImplCopyWith<$Res>
    implements $SurahReadCopyWith<$Res> {
  factory _$$SurahReadImplCopyWith(
          _$SurahReadImpl value, $Res Function(_$SurahReadImpl) then) =
      __$$SurahReadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> audioFull, List<Ayat> ayat});
}

/// @nodoc
class __$$SurahReadImplCopyWithImpl<$Res>
    extends _$SurahReadCopyWithImpl<$Res, _$SurahReadImpl>
    implements _$$SurahReadImplCopyWith<$Res> {
  __$$SurahReadImplCopyWithImpl(
      _$SurahReadImpl _value, $Res Function(_$SurahReadImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahRead
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioFull = null,
    Object? ayat = null,
  }) {
    return _then(_$SurahReadImpl(
      audioFull: null == audioFull
          ? _value._audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayat: null == ayat
          ? _value._ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<Ayat>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahReadImpl implements _SurahRead {
  _$SurahReadImpl(
      {required final Map<String, String> audioFull,
      required final List<Ayat> ayat})
      : _audioFull = audioFull,
        _ayat = ayat;

  factory _$SurahReadImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahReadImplFromJson(json);

  final Map<String, String> _audioFull;
  @override
  Map<String, String> get audioFull {
    if (_audioFull is EqualUnmodifiableMapView) return _audioFull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_audioFull);
  }

  final List<Ayat> _ayat;
  @override
  List<Ayat> get ayat {
    if (_ayat is EqualUnmodifiableListView) return _ayat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayat);
  }

  @override
  String toString() {
    return 'SurahRead(audioFull: $audioFull, ayat: $ayat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahReadImpl &&
            const DeepCollectionEquality()
                .equals(other._audioFull, _audioFull) &&
            const DeepCollectionEquality().equals(other._ayat, _ayat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioFull),
      const DeepCollectionEquality().hash(_ayat));

  /// Create a copy of SurahRead
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahReadImplCopyWith<_$SurahReadImpl> get copyWith =>
      __$$SurahReadImplCopyWithImpl<_$SurahReadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahReadImplToJson(
      this,
    );
  }
}

abstract class _SurahRead implements SurahRead {
  factory _SurahRead(
      {required final Map<String, String> audioFull,
      required final List<Ayat> ayat}) = _$SurahReadImpl;

  factory _SurahRead.fromJson(Map<String, dynamic> json) =
      _$SurahReadImpl.fromJson;

  @override
  Map<String, String> get audioFull;
  @override
  List<Ayat> get ayat;

  /// Create a copy of SurahRead
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahReadImplCopyWith<_$SurahReadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
