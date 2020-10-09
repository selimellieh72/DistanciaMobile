// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'watch_homeworks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WatchHomeworksEventTearOff {
  const _$WatchHomeworksEventTearOff();

// ignore: unused_element
  _WatchHomeworksStarted watchHomeworksStarted({String gradeId}) {
    return _WatchHomeworksStarted(
      gradeId: gradeId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHomeworksEvent = _$WatchHomeworksEventTearOff();

/// @nodoc
mixin _$WatchHomeworksEvent {
  String get gradeId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchHomeworksStarted(String gradeId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchHomeworksStarted(String gradeId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchHomeworksStarted(_WatchHomeworksStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchHomeworksStarted(_WatchHomeworksStarted value),
    @required Result orElse(),
  });

  $WatchHomeworksEventCopyWith<WatchHomeworksEvent> get copyWith;
}

/// @nodoc
abstract class $WatchHomeworksEventCopyWith<$Res> {
  factory $WatchHomeworksEventCopyWith(
          WatchHomeworksEvent value, $Res Function(WatchHomeworksEvent) then) =
      _$WatchHomeworksEventCopyWithImpl<$Res>;
  $Res call({String gradeId});
}

/// @nodoc
class _$WatchHomeworksEventCopyWithImpl<$Res>
    implements $WatchHomeworksEventCopyWith<$Res> {
  _$WatchHomeworksEventCopyWithImpl(this._value, this._then);

  final WatchHomeworksEvent _value;
  // ignore: unused_field
  final $Res Function(WatchHomeworksEvent) _then;

  @override
  $Res call({
    Object gradeId = freezed,
  }) {
    return _then(_value.copyWith(
      gradeId: gradeId == freezed ? _value.gradeId : gradeId as String,
    ));
  }
}

/// @nodoc
abstract class _$WatchHomeworksStartedCopyWith<$Res>
    implements $WatchHomeworksEventCopyWith<$Res> {
  factory _$WatchHomeworksStartedCopyWith(_WatchHomeworksStarted value,
          $Res Function(_WatchHomeworksStarted) then) =
      __$WatchHomeworksStartedCopyWithImpl<$Res>;
  @override
  $Res call({String gradeId});
}

/// @nodoc
class __$WatchHomeworksStartedCopyWithImpl<$Res>
    extends _$WatchHomeworksEventCopyWithImpl<$Res>
    implements _$WatchHomeworksStartedCopyWith<$Res> {
  __$WatchHomeworksStartedCopyWithImpl(_WatchHomeworksStarted _value,
      $Res Function(_WatchHomeworksStarted) _then)
      : super(_value, (v) => _then(v as _WatchHomeworksStarted));

  @override
  _WatchHomeworksStarted get _value => super._value as _WatchHomeworksStarted;

  @override
  $Res call({
    Object gradeId = freezed,
  }) {
    return _then(_WatchHomeworksStarted(
      gradeId: gradeId == freezed ? _value.gradeId : gradeId as String,
    ));
  }
}

/// @nodoc
class _$_WatchHomeworksStarted implements _WatchHomeworksStarted {
  const _$_WatchHomeworksStarted({this.gradeId});

  @override
  final String gradeId;

  @override
  String toString() {
    return 'WatchHomeworksEvent.watchHomeworksStarted(gradeId: $gradeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchHomeworksStarted &&
            (identical(other.gradeId, gradeId) ||
                const DeepCollectionEquality().equals(other.gradeId, gradeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gradeId);

  @override
  _$WatchHomeworksStartedCopyWith<_WatchHomeworksStarted> get copyWith =>
      __$WatchHomeworksStartedCopyWithImpl<_WatchHomeworksStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchHomeworksStarted(String gradeId),
  }) {
    assert(watchHomeworksStarted != null);
    return watchHomeworksStarted(gradeId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchHomeworksStarted(String gradeId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchHomeworksStarted != null) {
      return watchHomeworksStarted(gradeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchHomeworksStarted(_WatchHomeworksStarted value),
  }) {
    assert(watchHomeworksStarted != null);
    return watchHomeworksStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchHomeworksStarted(_WatchHomeworksStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchHomeworksStarted != null) {
      return watchHomeworksStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchHomeworksStarted implements WatchHomeworksEvent {
  const factory _WatchHomeworksStarted({String gradeId}) =
      _$_WatchHomeworksStarted;

  @override
  String get gradeId;
  @override
  _$WatchHomeworksStartedCopyWith<_WatchHomeworksStarted> get copyWith;
}

/// @nodoc
class _$WatchHomeworksStateTearOff {
  const _$WatchHomeworksStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _HomeworksError homeworksError(HomeworkFailure failure) {
    return _HomeworksError(
      failure,
    );
  }

// ignore: unused_element
  _HomeworksSuccess homeworksSuccess(List<HomeworkItem> homeworks) {
    return _HomeworksSuccess(
      homeworks,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WatchHomeworksState = _$WatchHomeworksStateTearOff();

/// @nodoc
mixin _$WatchHomeworksState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result homeworksError(HomeworkFailure failure),
    @required Result homeworksSuccess(List<HomeworkItem> homeworks),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result homeworksError(HomeworkFailure failure),
    Result homeworksSuccess(List<HomeworkItem> homeworks),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result homeworksError(_HomeworksError value),
    @required Result homeworksSuccess(_HomeworksSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result homeworksError(_HomeworksError value),
    Result homeworksSuccess(_HomeworksSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WatchHomeworksStateCopyWith<$Res> {
  factory $WatchHomeworksStateCopyWith(
          WatchHomeworksState value, $Res Function(WatchHomeworksState) then) =
      _$WatchHomeworksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchHomeworksStateCopyWithImpl<$Res>
    implements $WatchHomeworksStateCopyWith<$Res> {
  _$WatchHomeworksStateCopyWithImpl(this._value, this._then);

  final WatchHomeworksState _value;
  // ignore: unused_field
  final $Res Function(WatchHomeworksState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$WatchHomeworksStateCopyWithImpl<$Res>
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
    return 'WatchHomeworksState.initial()';
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
    @required Result homeworksError(HomeworkFailure failure),
    @required Result homeworksSuccess(List<HomeworkItem> homeworks),
  }) {
    assert(initial != null);
    assert(homeworksError != null);
    assert(homeworksSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result homeworksError(HomeworkFailure failure),
    Result homeworksSuccess(List<HomeworkItem> homeworks),
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
    @required Result homeworksError(_HomeworksError value),
    @required Result homeworksSuccess(_HomeworksSuccess value),
  }) {
    assert(initial != null);
    assert(homeworksError != null);
    assert(homeworksSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result homeworksError(_HomeworksError value),
    Result homeworksSuccess(_HomeworksSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WatchHomeworksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$HomeworksErrorCopyWith<$Res> {
  factory _$HomeworksErrorCopyWith(
          _HomeworksError value, $Res Function(_HomeworksError) then) =
      __$HomeworksErrorCopyWithImpl<$Res>;
  $Res call({HomeworkFailure failure});

  $HomeworkFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$HomeworksErrorCopyWithImpl<$Res>
    extends _$WatchHomeworksStateCopyWithImpl<$Res>
    implements _$HomeworksErrorCopyWith<$Res> {
  __$HomeworksErrorCopyWithImpl(
      _HomeworksError _value, $Res Function(_HomeworksError) _then)
      : super(_value, (v) => _then(v as _HomeworksError));

  @override
  _HomeworksError get _value => super._value as _HomeworksError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_HomeworksError(
      failure == freezed ? _value.failure : failure as HomeworkFailure,
    ));
  }

  @override
  $HomeworkFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $HomeworkFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_HomeworksError implements _HomeworksError {
  const _$_HomeworksError(this.failure) : assert(failure != null);

  @override
  final HomeworkFailure failure;

  @override
  String toString() {
    return 'WatchHomeworksState.homeworksError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworksError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$HomeworksErrorCopyWith<_HomeworksError> get copyWith =>
      __$HomeworksErrorCopyWithImpl<_HomeworksError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result homeworksError(HomeworkFailure failure),
    @required Result homeworksSuccess(List<HomeworkItem> homeworks),
  }) {
    assert(initial != null);
    assert(homeworksError != null);
    assert(homeworksSuccess != null);
    return homeworksError(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result homeworksError(HomeworkFailure failure),
    Result homeworksSuccess(List<HomeworkItem> homeworks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeworksError != null) {
      return homeworksError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result homeworksError(_HomeworksError value),
    @required Result homeworksSuccess(_HomeworksSuccess value),
  }) {
    assert(initial != null);
    assert(homeworksError != null);
    assert(homeworksSuccess != null);
    return homeworksError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result homeworksError(_HomeworksError value),
    Result homeworksSuccess(_HomeworksSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeworksError != null) {
      return homeworksError(this);
    }
    return orElse();
  }
}

abstract class _HomeworksError implements WatchHomeworksState {
  const factory _HomeworksError(HomeworkFailure failure) = _$_HomeworksError;

  HomeworkFailure get failure;
  _$HomeworksErrorCopyWith<_HomeworksError> get copyWith;
}

/// @nodoc
abstract class _$HomeworksSuccessCopyWith<$Res> {
  factory _$HomeworksSuccessCopyWith(
          _HomeworksSuccess value, $Res Function(_HomeworksSuccess) then) =
      __$HomeworksSuccessCopyWithImpl<$Res>;
  $Res call({List<HomeworkItem> homeworks});
}

/// @nodoc
class __$HomeworksSuccessCopyWithImpl<$Res>
    extends _$WatchHomeworksStateCopyWithImpl<$Res>
    implements _$HomeworksSuccessCopyWith<$Res> {
  __$HomeworksSuccessCopyWithImpl(
      _HomeworksSuccess _value, $Res Function(_HomeworksSuccess) _then)
      : super(_value, (v) => _then(v as _HomeworksSuccess));

  @override
  _HomeworksSuccess get _value => super._value as _HomeworksSuccess;

  @override
  $Res call({
    Object homeworks = freezed,
  }) {
    return _then(_HomeworksSuccess(
      homeworks == freezed ? _value.homeworks : homeworks as List<HomeworkItem>,
    ));
  }
}

/// @nodoc
class _$_HomeworksSuccess implements _HomeworksSuccess {
  const _$_HomeworksSuccess(this.homeworks) : assert(homeworks != null);

  @override
  final List<HomeworkItem> homeworks;

  @override
  String toString() {
    return 'WatchHomeworksState.homeworksSuccess(homeworks: $homeworks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworksSuccess &&
            (identical(other.homeworks, homeworks) ||
                const DeepCollectionEquality()
                    .equals(other.homeworks, homeworks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homeworks);

  @override
  _$HomeworksSuccessCopyWith<_HomeworksSuccess> get copyWith =>
      __$HomeworksSuccessCopyWithImpl<_HomeworksSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result homeworksError(HomeworkFailure failure),
    @required Result homeworksSuccess(List<HomeworkItem> homeworks),
  }) {
    assert(initial != null);
    assert(homeworksError != null);
    assert(homeworksSuccess != null);
    return homeworksSuccess(homeworks);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result homeworksError(HomeworkFailure failure),
    Result homeworksSuccess(List<HomeworkItem> homeworks),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeworksSuccess != null) {
      return homeworksSuccess(homeworks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result homeworksError(_HomeworksError value),
    @required Result homeworksSuccess(_HomeworksSuccess value),
  }) {
    assert(initial != null);
    assert(homeworksError != null);
    assert(homeworksSuccess != null);
    return homeworksSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result homeworksError(_HomeworksError value),
    Result homeworksSuccess(_HomeworksSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeworksSuccess != null) {
      return homeworksSuccess(this);
    }
    return orElse();
  }
}

abstract class _HomeworksSuccess implements WatchHomeworksState {
  const factory _HomeworksSuccess(List<HomeworkItem> homeworks) =
      _$_HomeworksSuccess;

  List<HomeworkItem> get homeworks;
  _$HomeworksSuccessCopyWith<_HomeworksSuccess> get copyWith;
}
