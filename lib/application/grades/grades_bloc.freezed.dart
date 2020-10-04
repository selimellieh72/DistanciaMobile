// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'grades_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GradesEventTearOff {
  const _$GradesEventTearOff();

// ignore: unused_element
  _WatchGradesStarted watchGradesStarted() {
    return const _WatchGradesStarted();
  }
}

/// @nodoc
// ignore: unused_element
const $GradesEvent = _$GradesEventTearOff();

/// @nodoc
mixin _$GradesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchGradesStarted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchGradesStarted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchGradesStarted(_WatchGradesStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchGradesStarted(_WatchGradesStarted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GradesEventCopyWith<$Res> {
  factory $GradesEventCopyWith(
          GradesEvent value, $Res Function(GradesEvent) then) =
      _$GradesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GradesEventCopyWithImpl<$Res> implements $GradesEventCopyWith<$Res> {
  _$GradesEventCopyWithImpl(this._value, this._then);

  final GradesEvent _value;
  // ignore: unused_field
  final $Res Function(GradesEvent) _then;
}

/// @nodoc
abstract class _$WatchGradesStartedCopyWith<$Res> {
  factory _$WatchGradesStartedCopyWith(
          _WatchGradesStarted value, $Res Function(_WatchGradesStarted) then) =
      __$WatchGradesStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchGradesStartedCopyWithImpl<$Res>
    extends _$GradesEventCopyWithImpl<$Res>
    implements _$WatchGradesStartedCopyWith<$Res> {
  __$WatchGradesStartedCopyWithImpl(
      _WatchGradesStarted _value, $Res Function(_WatchGradesStarted) _then)
      : super(_value, (v) => _then(v as _WatchGradesStarted));

  @override
  _WatchGradesStarted get _value => super._value as _WatchGradesStarted;
}

/// @nodoc
class _$_WatchGradesStarted implements _WatchGradesStarted {
  const _$_WatchGradesStarted();

  @override
  String toString() {
    return 'GradesEvent.watchGradesStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchGradesStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchGradesStarted(),
  }) {
    assert(watchGradesStarted != null);
    return watchGradesStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchGradesStarted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchGradesStarted != null) {
      return watchGradesStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchGradesStarted(_WatchGradesStarted value),
  }) {
    assert(watchGradesStarted != null);
    return watchGradesStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchGradesStarted(_WatchGradesStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchGradesStarted != null) {
      return watchGradesStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchGradesStarted implements GradesEvent {
  const factory _WatchGradesStarted() = _$_WatchGradesStarted;
}

/// @nodoc
class _$GradesStateTearOff {
  const _$GradesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _GradesLoaded gradesLoaded({@required List<GradeItem> grades}) {
    return _GradesLoaded(
      grades: grades,
    );
  }

// ignore: unused_element
  _GradesError gradesError({@required GradeFailure gradeFailure}) {
    return _GradesError(
      gradeFailure: gradeFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GradesState = _$GradesStateTearOff();

/// @nodoc
mixin _$GradesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result gradesLoaded(List<GradeItem> grades),
    @required Result gradesError(GradeFailure gradeFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result gradesLoaded(List<GradeItem> grades),
    Result gradesError(GradeFailure gradeFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result gradesLoaded(_GradesLoaded value),
    @required Result gradesError(_GradesError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result gradesLoaded(_GradesLoaded value),
    Result gradesError(_GradesError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GradesStateCopyWith<$Res> {
  factory $GradesStateCopyWith(
          GradesState value, $Res Function(GradesState) then) =
      _$GradesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GradesStateCopyWithImpl<$Res> implements $GradesStateCopyWith<$Res> {
  _$GradesStateCopyWithImpl(this._value, this._then);

  final GradesState _value;
  // ignore: unused_field
  final $Res Function(GradesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GradesStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GradesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result gradesLoaded(List<GradeItem> grades),
    @required Result gradesError(GradeFailure gradeFailure),
  }) {
    assert(initial != null);
    assert(gradesLoaded != null);
    assert(gradesError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result gradesLoaded(List<GradeItem> grades),
    Result gradesError(GradeFailure gradeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result gradesLoaded(_GradesLoaded value),
    @required Result gradesError(_GradesError value),
  }) {
    assert(initial != null);
    assert(gradesLoaded != null);
    assert(gradesError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result gradesLoaded(_GradesLoaded value),
    Result gradesError(_GradesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GradesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$GradesLoadedCopyWith<$Res> {
  factory _$GradesLoadedCopyWith(
          _GradesLoaded value, $Res Function(_GradesLoaded) then) =
      __$GradesLoadedCopyWithImpl<$Res>;
  $Res call({List<GradeItem> grades});
}

/// @nodoc
class __$GradesLoadedCopyWithImpl<$Res> extends _$GradesStateCopyWithImpl<$Res>
    implements _$GradesLoadedCopyWith<$Res> {
  __$GradesLoadedCopyWithImpl(
      _GradesLoaded _value, $Res Function(_GradesLoaded) _then)
      : super(_value, (v) => _then(v as _GradesLoaded));

  @override
  _GradesLoaded get _value => super._value as _GradesLoaded;

  @override
  $Res call({
    Object grades = freezed,
  }) {
    return _then(_GradesLoaded(
      grades: grades == freezed ? _value.grades : grades as List<GradeItem>,
    ));
  }
}

/// @nodoc
class _$_GradesLoaded implements _GradesLoaded {
  const _$_GradesLoaded({@required this.grades}) : assert(grades != null);

  @override
  final List<GradeItem> grades;

  @override
  String toString() {
    return 'GradesState.gradesLoaded(grades: $grades)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradesLoaded &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grades);

  @override
  _$GradesLoadedCopyWith<_GradesLoaded> get copyWith =>
      __$GradesLoadedCopyWithImpl<_GradesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result gradesLoaded(List<GradeItem> grades),
    @required Result gradesError(GradeFailure gradeFailure),
  }) {
    assert(initial != null);
    assert(gradesLoaded != null);
    assert(gradesError != null);
    return gradesLoaded(grades);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result gradesLoaded(List<GradeItem> grades),
    Result gradesError(GradeFailure gradeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesLoaded != null) {
      return gradesLoaded(grades);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result gradesLoaded(_GradesLoaded value),
    @required Result gradesError(_GradesError value),
  }) {
    assert(initial != null);
    assert(gradesLoaded != null);
    assert(gradesError != null);
    return gradesLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result gradesLoaded(_GradesLoaded value),
    Result gradesError(_GradesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesLoaded != null) {
      return gradesLoaded(this);
    }
    return orElse();
  }
}

abstract class _GradesLoaded implements GradesState {
  const factory _GradesLoaded({@required List<GradeItem> grades}) =
      _$_GradesLoaded;

  List<GradeItem> get grades;
  _$GradesLoadedCopyWith<_GradesLoaded> get copyWith;
}

/// @nodoc
abstract class _$GradesErrorCopyWith<$Res> {
  factory _$GradesErrorCopyWith(
          _GradesError value, $Res Function(_GradesError) then) =
      __$GradesErrorCopyWithImpl<$Res>;
  $Res call({GradeFailure gradeFailure});

  $GradeFailureCopyWith<$Res> get gradeFailure;
}

/// @nodoc
class __$GradesErrorCopyWithImpl<$Res> extends _$GradesStateCopyWithImpl<$Res>
    implements _$GradesErrorCopyWith<$Res> {
  __$GradesErrorCopyWithImpl(
      _GradesError _value, $Res Function(_GradesError) _then)
      : super(_value, (v) => _then(v as _GradesError));

  @override
  _GradesError get _value => super._value as _GradesError;

  @override
  $Res call({
    Object gradeFailure = freezed,
  }) {
    return _then(_GradesError(
      gradeFailure: gradeFailure == freezed
          ? _value.gradeFailure
          : gradeFailure as GradeFailure,
    ));
  }

  @override
  $GradeFailureCopyWith<$Res> get gradeFailure {
    if (_value.gradeFailure == null) {
      return null;
    }
    return $GradeFailureCopyWith<$Res>(_value.gradeFailure, (value) {
      return _then(_value.copyWith(gradeFailure: value));
    });
  }
}

/// @nodoc
class _$_GradesError implements _GradesError {
  const _$_GradesError({@required this.gradeFailure})
      : assert(gradeFailure != null);

  @override
  final GradeFailure gradeFailure;

  @override
  String toString() {
    return 'GradesState.gradesError(gradeFailure: $gradeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradesError &&
            (identical(other.gradeFailure, gradeFailure) ||
                const DeepCollectionEquality()
                    .equals(other.gradeFailure, gradeFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gradeFailure);

  @override
  _$GradesErrorCopyWith<_GradesError> get copyWith =>
      __$GradesErrorCopyWithImpl<_GradesError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result gradesLoaded(List<GradeItem> grades),
    @required Result gradesError(GradeFailure gradeFailure),
  }) {
    assert(initial != null);
    assert(gradesLoaded != null);
    assert(gradesError != null);
    return gradesError(gradeFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result gradesLoaded(List<GradeItem> grades),
    Result gradesError(GradeFailure gradeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesError != null) {
      return gradesError(gradeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result gradesLoaded(_GradesLoaded value),
    @required Result gradesError(_GradesError value),
  }) {
    assert(initial != null);
    assert(gradesLoaded != null);
    assert(gradesError != null);
    return gradesError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result gradesLoaded(_GradesLoaded value),
    Result gradesError(_GradesError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesError != null) {
      return gradesError(this);
    }
    return orElse();
  }
}

abstract class _GradesError implements GradesState {
  const factory _GradesError({@required GradeFailure gradeFailure}) =
      _$_GradesError;

  GradeFailure get gradeFailure;
  _$GradesErrorCopyWith<_GradesError> get copyWith;
}
