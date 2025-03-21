// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SurahEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSurah,
    required TResult Function(String query) searchSurah,
    required TResult Function(List<Surah> list) setAllSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSurah,
    TResult? Function(String query)? searchSurah,
    TResult? Function(List<Surah> list)? setAllSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSurah,
    TResult Function(String query)? searchSurah,
    TResult Function(List<Surah> list)? setAllSurah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_SearchSurah value) searchSurah,
    required TResult Function(_SetAllSurah value) setAllSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_SearchSurah value)? searchSurah,
    TResult? Function(_SetAllSurah value)? setAllSurah,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_SearchSurah value)? searchSurah,
    TResult Function(_SetAllSurah value)? setAllSurah,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahEventCopyWith<$Res> {
  factory $SurahEventCopyWith(
          SurahEvent value, $Res Function(SurahEvent) then) =
      _$SurahEventCopyWithImpl<$Res, SurahEvent>;
}

/// @nodoc
class _$SurahEventCopyWithImpl<$Res, $Val extends SurahEvent>
    implements $SurahEventCopyWith<$Res> {
  _$SurahEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSurahImplCopyWith<$Res> {
  factory _$$GetSurahImplCopyWith(
          _$GetSurahImpl value, $Res Function(_$GetSurahImpl) then) =
      __$$GetSurahImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSurahImplCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$GetSurahImpl>
    implements _$$GetSurahImplCopyWith<$Res> {
  __$$GetSurahImplCopyWithImpl(
      _$GetSurahImpl _value, $Res Function(_$GetSurahImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSurahImpl implements _GetSurah {
  const _$GetSurahImpl();

  @override
  String toString() {
    return 'SurahEvent.getSurah()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSurahImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSurah,
    required TResult Function(String query) searchSurah,
    required TResult Function(List<Surah> list) setAllSurah,
  }) {
    return getSurah();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSurah,
    TResult? Function(String query)? searchSurah,
    TResult? Function(List<Surah> list)? setAllSurah,
  }) {
    return getSurah?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSurah,
    TResult Function(String query)? searchSurah,
    TResult Function(List<Surah> list)? setAllSurah,
    required TResult orElse(),
  }) {
    if (getSurah != null) {
      return getSurah();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_SearchSurah value) searchSurah,
    required TResult Function(_SetAllSurah value) setAllSurah,
  }) {
    return getSurah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_SearchSurah value)? searchSurah,
    TResult? Function(_SetAllSurah value)? setAllSurah,
  }) {
    return getSurah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_SearchSurah value)? searchSurah,
    TResult Function(_SetAllSurah value)? setAllSurah,
    required TResult orElse(),
  }) {
    if (getSurah != null) {
      return getSurah(this);
    }
    return orElse();
  }
}

abstract class _GetSurah implements SurahEvent {
  const factory _GetSurah() = _$GetSurahImpl;
}

/// @nodoc
abstract class _$$SearchSurahImplCopyWith<$Res> {
  factory _$$SearchSurahImplCopyWith(
          _$SearchSurahImpl value, $Res Function(_$SearchSurahImpl) then) =
      __$$SearchSurahImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchSurahImplCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$SearchSurahImpl>
    implements _$$SearchSurahImplCopyWith<$Res> {
  __$$SearchSurahImplCopyWithImpl(
      _$SearchSurahImpl _value, $Res Function(_$SearchSurahImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchSurahImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchSurahImpl implements _SearchSurah {
  const _$SearchSurahImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SurahEvent.searchSurah(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSurahImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSurahImplCopyWith<_$SearchSurahImpl> get copyWith =>
      __$$SearchSurahImplCopyWithImpl<_$SearchSurahImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSurah,
    required TResult Function(String query) searchSurah,
    required TResult Function(List<Surah> list) setAllSurah,
  }) {
    return searchSurah(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSurah,
    TResult? Function(String query)? searchSurah,
    TResult? Function(List<Surah> list)? setAllSurah,
  }) {
    return searchSurah?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSurah,
    TResult Function(String query)? searchSurah,
    TResult Function(List<Surah> list)? setAllSurah,
    required TResult orElse(),
  }) {
    if (searchSurah != null) {
      return searchSurah(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_SearchSurah value) searchSurah,
    required TResult Function(_SetAllSurah value) setAllSurah,
  }) {
    return searchSurah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_SearchSurah value)? searchSurah,
    TResult? Function(_SetAllSurah value)? setAllSurah,
  }) {
    return searchSurah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_SearchSurah value)? searchSurah,
    TResult Function(_SetAllSurah value)? setAllSurah,
    required TResult orElse(),
  }) {
    if (searchSurah != null) {
      return searchSurah(this);
    }
    return orElse();
  }
}

abstract class _SearchSurah implements SurahEvent {
  const factory _SearchSurah(final String query) = _$SearchSurahImpl;

  String get query;

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSurahImplCopyWith<_$SearchSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAllSurahImplCopyWith<$Res> {
  factory _$$SetAllSurahImplCopyWith(
          _$SetAllSurahImpl value, $Res Function(_$SetAllSurahImpl) then) =
      __$$SetAllSurahImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Surah> list});
}

/// @nodoc
class __$$SetAllSurahImplCopyWithImpl<$Res>
    extends _$SurahEventCopyWithImpl<$Res, _$SetAllSurahImpl>
    implements _$$SetAllSurahImplCopyWith<$Res> {
  __$$SetAllSurahImplCopyWithImpl(
      _$SetAllSurahImpl _value, $Res Function(_$SetAllSurahImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$SetAllSurahImpl(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Surah>,
    ));
  }
}

/// @nodoc

class _$SetAllSurahImpl implements _SetAllSurah {
  const _$SetAllSurahImpl(final List<Surah> list) : _list = list;

  final List<Surah> _list;
  @override
  List<Surah> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SurahEvent.setAllSurah(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAllSurahImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAllSurahImplCopyWith<_$SetAllSurahImpl> get copyWith =>
      __$$SetAllSurahImplCopyWithImpl<_$SetAllSurahImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSurah,
    required TResult Function(String query) searchSurah,
    required TResult Function(List<Surah> list) setAllSurah,
  }) {
    return setAllSurah(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSurah,
    TResult? Function(String query)? searchSurah,
    TResult? Function(List<Surah> list)? setAllSurah,
  }) {
    return setAllSurah?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSurah,
    TResult Function(String query)? searchSurah,
    TResult Function(List<Surah> list)? setAllSurah,
    required TResult orElse(),
  }) {
    if (setAllSurah != null) {
      return setAllSurah(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSurah value) getSurah,
    required TResult Function(_SearchSurah value) searchSurah,
    required TResult Function(_SetAllSurah value) setAllSurah,
  }) {
    return setAllSurah(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSurah value)? getSurah,
    TResult? Function(_SearchSurah value)? searchSurah,
    TResult? Function(_SetAllSurah value)? setAllSurah,
  }) {
    return setAllSurah?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSurah value)? getSurah,
    TResult Function(_SearchSurah value)? searchSurah,
    TResult Function(_SetAllSurah value)? setAllSurah,
    required TResult orElse(),
  }) {
    if (setAllSurah != null) {
      return setAllSurah(this);
    }
    return orElse();
  }
}

abstract class _SetAllSurah implements SurahEvent {
  const factory _SetAllSurah(final List<Surah> list) = _$SetAllSurahImpl;

  List<Surah> get list;

  /// Create a copy of SurahEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetAllSurahImplCopyWith<_$SetAllSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SurahState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)
        loadSuccess,
    required TResult Function(Failure? failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult? Function(Failure? failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult Function(Failure? failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahStateCopyWith<$Res> {
  factory $SurahStateCopyWith(
          SurahState value, $Res Function(SurahState) then) =
      _$SurahStateCopyWithImpl<$Res, SurahState>;
}

/// @nodoc
class _$SurahStateCopyWithImpl<$Res, $Val extends SurahState>
    implements $SurahStateCopyWith<$Res> {
  _$SurahStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SurahState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)
        loadSuccess,
    required TResult Function(Failure? failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult? Function(Failure? failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult Function(Failure? failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SurahState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'SurahState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)
        loadSuccess,
    required TResult Function(Failure? failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult? Function(Failure? failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult Function(Failure? failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SurahState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Surah>? surahList, List<Surah>? filteredList, String searchQuery});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahList = freezed,
    Object? filteredList = freezed,
    Object? searchQuery = null,
  }) {
    return _then(_$LoadSuccessImpl(
      surahList: freezed == surahList
          ? _value._surahList
          : surahList // ignore: cast_nullable_to_non_nullable
              as List<Surah>?,
      filteredList: freezed == filteredList
          ? _value._filteredList
          : filteredList // ignore: cast_nullable_to_non_nullable
              as List<Surah>?,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(
      {required final List<Surah>? surahList,
      required final List<Surah>? filteredList,
      required this.searchQuery})
      : _surahList = surahList,
        _filteredList = filteredList;

  final List<Surah>? _surahList;
  @override
  List<Surah>? get surahList {
    final value = _surahList;
    if (value == null) return null;
    if (_surahList is EqualUnmodifiableListView) return _surahList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Surah>? _filteredList;
  @override
  List<Surah>? get filteredList {
    final value = _filteredList;
    if (value == null) return null;
    if (_filteredList is EqualUnmodifiableListView) return _filteredList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SurahState.loadSuccess(surahList: $surahList, filteredList: $filteredList, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._surahList, _surahList) &&
            const DeepCollectionEquality()
                .equals(other._filteredList, _filteredList) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_surahList),
      const DeepCollectionEquality().hash(_filteredList),
      searchQuery);

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)
        loadSuccess,
    required TResult Function(Failure? failure) loadFailure,
  }) {
    return loadSuccess(surahList, filteredList, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult? Function(Failure? failure)? loadFailure,
  }) {
    return loadSuccess?.call(surahList, filteredList, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult Function(Failure? failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(surahList, filteredList, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements SurahState {
  const factory _LoadSuccess(
      {required final List<Surah>? surahList,
      required final List<Surah>? filteredList,
      required final String searchQuery}) = _$LoadSuccessImpl;

  List<Surah>? get surahList;
  List<Surah>? get filteredList;
  String get searchQuery;

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$SurahStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$LoadFailureImpl(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$LoadFailureImpl implements _LoadFailure {
  const _$LoadFailureImpl(this.failure);

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SurahState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)
        loadSuccess,
    required TResult Function(Failure? failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult? Function(Failure? failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Surah>? surahList, List<Surah>? filteredList,
            String searchQuery)?
        loadSuccess,
    TResult Function(Failure? failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements SurahState {
  const factory _LoadFailure(final Failure? failure) = _$LoadFailureImpl;

  Failure? get failure;

  /// Create a copy of SurahState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
