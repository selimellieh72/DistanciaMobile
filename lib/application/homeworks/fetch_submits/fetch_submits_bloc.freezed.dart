// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'fetch_submits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FetchSubmitsEventTearOff {
  const _$FetchSubmitsEventTearOff();

// ignore: unused_element
  _FetchSubmitsStarted fetchSubmitsStarted(
      {@required String homeworkId, @required String gradeId}) {
    return _FetchSubmitsStarted(
      homeworkId: homeworkId,
      gradeId: gradeId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSubmitsEvent = _$FetchSubmitsEventTearOff();

/// @nodoc
mixin _$FetchSubmitsEvent {
  String get homeworkId;
  String get gradeId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchSubmitsStarted(String homeworkId, String gradeId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchSubmitsStarted(String homeworkId, String gradeId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchSubmitsStarted(_FetchSubmitsStarted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchSubmitsStarted(_FetchSubmitsStarted value),
    @required Result orElse(),
  });

  $FetchSubmitsEventCopyWith<FetchSubmitsEvent> get copyWith;
}

/// @nodoc
abstract class $FetchSubmitsEventCopyWith<$Res> {
  factory $FetchSubmitsEventCopyWith(
          FetchSubmitsEvent value, $Res Function(FetchSubmitsEvent) then) =
      _$FetchSubmitsEventCopyWithImpl<$Res>;
  $Res call({String homeworkId, String gradeId});
}

/// @nodoc
class _$FetchSubmitsEventCopyWithImpl<$Res>
    implements $FetchSubmitsEventCopyWith<$Res> {
  _$FetchSubmitsEventCopyWithImpl(this._value, this._then);

  final FetchSubmitsEvent _value;
  // ignore: unused_field
  final $Res Function(FetchSubmitsEvent) _then;

  @override
  $Res call({
    Object homeworkId = freezed,
    Object gradeId = freezed,
  }) {
    return _then(_value.copyWith(
      homeworkId:
          homeworkId == freezed ? _value.homeworkId : homeworkId as String,
      gradeId: gradeId == freezed ? _value.gradeId : gradeId as String,
    ));
  }
}

/// @nodoc
abstract class _$FetchSubmitsStartedCopyWith<$Res>
    implements $FetchSubmitsEventCopyWith<$Res> {
  factory _$FetchSubmitsStartedCopyWith(_FetchSubmitsStarted value,
          $Res Function(_FetchSubmitsStarted) then) =
      __$FetchSubmitsStartedCopyWithImpl<$Res>;
  @override
  $Res call({String homeworkId, String gradeId});
}

/// @nodoc
class __$FetchSubmitsStartedCopyWithImpl<$Res>
    extends _$FetchSubmitsEventCopyWithImpl<$Res>
    implements _$FetchSubmitsStartedCopyWith<$Res> {
  __$FetchSubmitsStartedCopyWithImpl(
      _FetchSubmitsStarted _value, $Res Function(_FetchSubmitsStarted) _then)
      : super(_value, (v) => _then(v as _FetchSubmitsStarted));

  @override
  _FetchSubmitsStarted get _value => super._value as _FetchSubmitsStarted;

  @override
  $Res call({
    Object homeworkId = freezed,
    Object gradeId = freezed,
  }) {
    return _then(_FetchSubmitsStarted(
      homeworkId:
          homeworkId == freezed ? _value.homeworkId : homeworkId as String,
      gradeId: gradeId == freezed ? _value.gradeId : gradeId as String,
    ));
  }
}

/// @nodoc
class _$_FetchSubmitsStarted implements _FetchSubmitsStarted {
  const _$_FetchSubmitsStarted(
      {@required this.homeworkId, @required this.gradeId})
      : assert(homeworkId != null),
        assert(gradeId != null);

  @override
  final String homeworkId;
  @override
  final String gradeId;

  @override
  String toString() {
    return 'FetchSubmitsEvent.fetchSubmitsStarted(homeworkId: $homeworkId, gradeId: $gradeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchSubmitsStarted &&
            (identical(other.homeworkId, homeworkId) ||
                const DeepCollectionEquality()
                    .equals(other.homeworkId, homeworkId)) &&
            (identical(other.gradeId, gradeId) ||
                const DeepCollectionEquality().equals(other.gradeId, gradeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeworkId) ^
      const DeepCollectionEquality().hash(gradeId);

  @override
  _$FetchSubmitsStartedCopyWith<_FetchSubmitsStarted> get copyWith =>
      __$FetchSubmitsStartedCopyWithImpl<_FetchSubmitsStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchSubmitsStarted(String homeworkId, String gradeId),
  }) {
    assert(fetchSubmitsStarted != null);
    return fetchSubmitsStarted(homeworkId, gradeId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchSubmitsStarted(String homeworkId, String gradeId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSubmitsStarted != null) {
      return fetchSubmitsStarted(homeworkId, gradeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchSubmitsStarted(_FetchSubmitsStarted value),
  }) {
    assert(fetchSubmitsStarted != null);
    return fetchSubmitsStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchSubmitsStarted(_FetchSubmitsStarted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchSubmitsStarted != null) {
      return fetchSubmitsStarted(this);
    }
    return orElse();
  }
}

abstract class _FetchSubmitsStarted implements FetchSubmitsEvent {
  const factory _FetchSubmitsStarted(
      {@required String homeworkId,
      @required String gradeId}) = _$_FetchSubmitsStarted;

  @override
  String get homeworkId;
  @override
  String get gradeId;
  @override
  _$FetchSubmitsStartedCopyWith<_FetchSubmitsStarted> get copyWith;
}

/// @nodoc
class _$FetchSubmitsStateTearOff {
  const _$FetchSubmitsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _SubmitsLoading submitsLoading() {
    return const _SubmitsLoading();
  }

// ignore: unused_element
  _SubmitsError submitsError({@required HomeworkFailure failure}) {
    return _SubmitsError(
      failure: failure,
    );
  }

// ignore: unused_element
  _SubmitsSuccess submitsSuccess(List<Submit> submits) {
    return _SubmitsSuccess(
      submits,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FetchSubmitsState = _$FetchSubmitsStateTearOff();

/// @nodoc
mixin _$FetchSubmitsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitsLoading(),
    @required Result submitsError(HomeworkFailure failure),
    @required Result submitsSuccess(List<Submit> submits),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitsLoading(),
    Result submitsError(HomeworkFailure failure),
    Result submitsSuccess(List<Submit> submits),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result submitsLoading(_SubmitsLoading value),
    @required Result submitsError(_SubmitsError value),
    @required Result submitsSuccess(_SubmitsSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result submitsLoading(_SubmitsLoading value),
    Result submitsError(_SubmitsError value),
    Result submitsSuccess(_SubmitsSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FetchSubmitsStateCopyWith<$Res> {
  factory $FetchSubmitsStateCopyWith(
          FetchSubmitsState value, $Res Function(FetchSubmitsState) then) =
      _$FetchSubmitsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchSubmitsStateCopyWithImpl<$Res>
    implements $FetchSubmitsStateCopyWith<$Res> {
  _$FetchSubmitsStateCopyWithImpl(this._value, this._then);

  final FetchSubmitsState _value;
  // ignore: unused_field
  final $Res Function(FetchSubmitsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FetchSubmitsStateCopyWithImpl<$Res>
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
    return 'FetchSubmitsState.initial()';
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
    @required Result submitsLoading(),
    @required Result submitsError(HomeworkFailure failure),
    @required Result submitsSuccess(List<Submit> submits),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitsLoading(),
    Result submitsError(HomeworkFailure failure),
    Result submitsSuccess(List<Submit> submits),
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
    @required Result submitsLoading(_SubmitsLoading value),
    @required Result submitsError(_SubmitsError value),
    @required Result submitsSuccess(_SubmitsSuccess value),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result submitsLoading(_SubmitsLoading value),
    Result submitsError(_SubmitsError value),
    Result submitsSuccess(_SubmitsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FetchSubmitsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SubmitsLoadingCopyWith<$Res> {
  factory _$SubmitsLoadingCopyWith(
          _SubmitsLoading value, $Res Function(_SubmitsLoading) then) =
      __$SubmitsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitsLoadingCopyWithImpl<$Res>
    extends _$FetchSubmitsStateCopyWithImpl<$Res>
    implements _$SubmitsLoadingCopyWith<$Res> {
  __$SubmitsLoadingCopyWithImpl(
      _SubmitsLoading _value, $Res Function(_SubmitsLoading) _then)
      : super(_value, (v) => _then(v as _SubmitsLoading));

  @override
  _SubmitsLoading get _value => super._value as _SubmitsLoading;
}

/// @nodoc
class _$_SubmitsLoading implements _SubmitsLoading {
  const _$_SubmitsLoading();

  @override
  String toString() {
    return 'FetchSubmitsState.submitsLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmitsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitsLoading(),
    @required Result submitsError(HomeworkFailure failure),
    @required Result submitsSuccess(List<Submit> submits),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return submitsLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitsLoading(),
    Result submitsError(HomeworkFailure failure),
    Result submitsSuccess(List<Submit> submits),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitsLoading != null) {
      return submitsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result submitsLoading(_SubmitsLoading value),
    @required Result submitsError(_SubmitsError value),
    @required Result submitsSuccess(_SubmitsSuccess value),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return submitsLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result submitsLoading(_SubmitsLoading value),
    Result submitsError(_SubmitsError value),
    Result submitsSuccess(_SubmitsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitsLoading != null) {
      return submitsLoading(this);
    }
    return orElse();
  }
}

abstract class _SubmitsLoading implements FetchSubmitsState {
  const factory _SubmitsLoading() = _$_SubmitsLoading;
}

/// @nodoc
abstract class _$SubmitsErrorCopyWith<$Res> {
  factory _$SubmitsErrorCopyWith(
          _SubmitsError value, $Res Function(_SubmitsError) then) =
      __$SubmitsErrorCopyWithImpl<$Res>;
  $Res call({HomeworkFailure failure});

  $HomeworkFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$SubmitsErrorCopyWithImpl<$Res>
    extends _$FetchSubmitsStateCopyWithImpl<$Res>
    implements _$SubmitsErrorCopyWith<$Res> {
  __$SubmitsErrorCopyWithImpl(
      _SubmitsError _value, $Res Function(_SubmitsError) _then)
      : super(_value, (v) => _then(v as _SubmitsError));

  @override
  _SubmitsError get _value => super._value as _SubmitsError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_SubmitsError(
      failure: failure == freezed ? _value.failure : failure as HomeworkFailure,
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
class _$_SubmitsError implements _SubmitsError {
  const _$_SubmitsError({@required this.failure}) : assert(failure != null);

  @override
  final HomeworkFailure failure;

  @override
  String toString() {
    return 'FetchSubmitsState.submitsError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitsError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$SubmitsErrorCopyWith<_SubmitsError> get copyWith =>
      __$SubmitsErrorCopyWithImpl<_SubmitsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitsLoading(),
    @required Result submitsError(HomeworkFailure failure),
    @required Result submitsSuccess(List<Submit> submits),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return submitsError(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitsLoading(),
    Result submitsError(HomeworkFailure failure),
    Result submitsSuccess(List<Submit> submits),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitsError != null) {
      return submitsError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result submitsLoading(_SubmitsLoading value),
    @required Result submitsError(_SubmitsError value),
    @required Result submitsSuccess(_SubmitsSuccess value),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return submitsError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result submitsLoading(_SubmitsLoading value),
    Result submitsError(_SubmitsError value),
    Result submitsSuccess(_SubmitsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitsError != null) {
      return submitsError(this);
    }
    return orElse();
  }
}

abstract class _SubmitsError implements FetchSubmitsState {
  const factory _SubmitsError({@required HomeworkFailure failure}) =
      _$_SubmitsError;

  HomeworkFailure get failure;
  _$SubmitsErrorCopyWith<_SubmitsError> get copyWith;
}

/// @nodoc
abstract class _$SubmitsSuccessCopyWith<$Res> {
  factory _$SubmitsSuccessCopyWith(
          _SubmitsSuccess value, $Res Function(_SubmitsSuccess) then) =
      __$SubmitsSuccessCopyWithImpl<$Res>;
  $Res call({List<Submit> submits});
}

/// @nodoc
class __$SubmitsSuccessCopyWithImpl<$Res>
    extends _$FetchSubmitsStateCopyWithImpl<$Res>
    implements _$SubmitsSuccessCopyWith<$Res> {
  __$SubmitsSuccessCopyWithImpl(
      _SubmitsSuccess _value, $Res Function(_SubmitsSuccess) _then)
      : super(_value, (v) => _then(v as _SubmitsSuccess));

  @override
  _SubmitsSuccess get _value => super._value as _SubmitsSuccess;

  @override
  $Res call({
    Object submits = freezed,
  }) {
    return _then(_SubmitsSuccess(
      submits == freezed ? _value.submits : submits as List<Submit>,
    ));
  }
}

/// @nodoc
class _$_SubmitsSuccess implements _SubmitsSuccess {
  const _$_SubmitsSuccess(this.submits) : assert(submits != null);

  @override
  final List<Submit> submits;

  @override
  String toString() {
    return 'FetchSubmitsState.submitsSuccess(submits: $submits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitsSuccess &&
            (identical(other.submits, submits) ||
                const DeepCollectionEquality().equals(other.submits, submits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(submits);

  @override
  _$SubmitsSuccessCopyWith<_SubmitsSuccess> get copyWith =>
      __$SubmitsSuccessCopyWithImpl<_SubmitsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result submitsLoading(),
    @required Result submitsError(HomeworkFailure failure),
    @required Result submitsSuccess(List<Submit> submits),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return submitsSuccess(submits);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result submitsLoading(),
    Result submitsError(HomeworkFailure failure),
    Result submitsSuccess(List<Submit> submits),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitsSuccess != null) {
      return submitsSuccess(submits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result submitsLoading(_SubmitsLoading value),
    @required Result submitsError(_SubmitsError value),
    @required Result submitsSuccess(_SubmitsSuccess value),
  }) {
    assert(initial != null);
    assert(submitsLoading != null);
    assert(submitsError != null);
    assert(submitsSuccess != null);
    return submitsSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result submitsLoading(_SubmitsLoading value),
    Result submitsError(_SubmitsError value),
    Result submitsSuccess(_SubmitsSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitsSuccess != null) {
      return submitsSuccess(this);
    }
    return orElse();
  }
}

abstract class _SubmitsSuccess implements FetchSubmitsState {
  const factory _SubmitsSuccess(List<Submit> submits) = _$_SubmitsSuccess;

  List<Submit> get submits;
  _$SubmitsSuccessCopyWith<_SubmitsSuccess> get copyWith;
}
