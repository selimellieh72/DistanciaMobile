// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'submit_homework_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SubmitHomeworkEventTearOff {
  const _$SubmitHomeworkEventTearOff();

// ignore: unused_element
  _HomeworkToSubmitAdded homeworkToSubmitAdded(File homework) {
    return _HomeworkToSubmitAdded(
      homework,
    );
  }

// ignore: unused_element
  _SubmitHomework submitHomework(
      {@required String gradeId, @required String homeworkId}) {
    return _SubmitHomework(
      gradeId: gradeId,
      homeworkId: homeworkId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SubmitHomeworkEvent = _$SubmitHomeworkEventTearOff();

/// @nodoc
mixin _$SubmitHomeworkEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeworkToSubmitAdded(File homework),
    @required Result submitHomework(String gradeId, String homeworkId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeworkToSubmitAdded(File homework),
    Result submitHomework(String gradeId, String homeworkId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeworkToSubmitAdded(_HomeworkToSubmitAdded value),
    @required Result submitHomework(_SubmitHomework value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeworkToSubmitAdded(_HomeworkToSubmitAdded value),
    Result submitHomework(_SubmitHomework value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SubmitHomeworkEventCopyWith<$Res> {
  factory $SubmitHomeworkEventCopyWith(
          SubmitHomeworkEvent value, $Res Function(SubmitHomeworkEvent) then) =
      _$SubmitHomeworkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitHomeworkEventCopyWithImpl<$Res>
    implements $SubmitHomeworkEventCopyWith<$Res> {
  _$SubmitHomeworkEventCopyWithImpl(this._value, this._then);

  final SubmitHomeworkEvent _value;
  // ignore: unused_field
  final $Res Function(SubmitHomeworkEvent) _then;
}

/// @nodoc
abstract class _$HomeworkToSubmitAddedCopyWith<$Res> {
  factory _$HomeworkToSubmitAddedCopyWith(_HomeworkToSubmitAdded value,
          $Res Function(_HomeworkToSubmitAdded) then) =
      __$HomeworkToSubmitAddedCopyWithImpl<$Res>;
  $Res call({File homework});
}

/// @nodoc
class __$HomeworkToSubmitAddedCopyWithImpl<$Res>
    extends _$SubmitHomeworkEventCopyWithImpl<$Res>
    implements _$HomeworkToSubmitAddedCopyWith<$Res> {
  __$HomeworkToSubmitAddedCopyWithImpl(_HomeworkToSubmitAdded _value,
      $Res Function(_HomeworkToSubmitAdded) _then)
      : super(_value, (v) => _then(v as _HomeworkToSubmitAdded));

  @override
  _HomeworkToSubmitAdded get _value => super._value as _HomeworkToSubmitAdded;

  @override
  $Res call({
    Object homework = freezed,
  }) {
    return _then(_HomeworkToSubmitAdded(
      homework == freezed ? _value.homework : homework as File,
    ));
  }
}

/// @nodoc
class _$_HomeworkToSubmitAdded implements _HomeworkToSubmitAdded {
  const _$_HomeworkToSubmitAdded(this.homework) : assert(homework != null);

  @override
  final File homework;

  @override
  String toString() {
    return 'SubmitHomeworkEvent.homeworkToSubmitAdded(homework: $homework)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeworkToSubmitAdded &&
            (identical(other.homework, homework) ||
                const DeepCollectionEquality()
                    .equals(other.homework, homework)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homework);

  @override
  _$HomeworkToSubmitAddedCopyWith<_HomeworkToSubmitAdded> get copyWith =>
      __$HomeworkToSubmitAddedCopyWithImpl<_HomeworkToSubmitAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeworkToSubmitAdded(File homework),
    @required Result submitHomework(String gradeId, String homeworkId),
  }) {
    assert(homeworkToSubmitAdded != null);
    assert(submitHomework != null);
    return homeworkToSubmitAdded(homework);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeworkToSubmitAdded(File homework),
    Result submitHomework(String gradeId, String homeworkId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeworkToSubmitAdded != null) {
      return homeworkToSubmitAdded(homework);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeworkToSubmitAdded(_HomeworkToSubmitAdded value),
    @required Result submitHomework(_SubmitHomework value),
  }) {
    assert(homeworkToSubmitAdded != null);
    assert(submitHomework != null);
    return homeworkToSubmitAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeworkToSubmitAdded(_HomeworkToSubmitAdded value),
    Result submitHomework(_SubmitHomework value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (homeworkToSubmitAdded != null) {
      return homeworkToSubmitAdded(this);
    }
    return orElse();
  }
}

abstract class _HomeworkToSubmitAdded implements SubmitHomeworkEvent {
  const factory _HomeworkToSubmitAdded(File homework) =
      _$_HomeworkToSubmitAdded;

  File get homework;
  _$HomeworkToSubmitAddedCopyWith<_HomeworkToSubmitAdded> get copyWith;
}

/// @nodoc
abstract class _$SubmitHomeworkCopyWith<$Res> {
  factory _$SubmitHomeworkCopyWith(
          _SubmitHomework value, $Res Function(_SubmitHomework) then) =
      __$SubmitHomeworkCopyWithImpl<$Res>;
  $Res call({String gradeId, String homeworkId});
}

/// @nodoc
class __$SubmitHomeworkCopyWithImpl<$Res>
    extends _$SubmitHomeworkEventCopyWithImpl<$Res>
    implements _$SubmitHomeworkCopyWith<$Res> {
  __$SubmitHomeworkCopyWithImpl(
      _SubmitHomework _value, $Res Function(_SubmitHomework) _then)
      : super(_value, (v) => _then(v as _SubmitHomework));

  @override
  _SubmitHomework get _value => super._value as _SubmitHomework;

  @override
  $Res call({
    Object gradeId = freezed,
    Object homeworkId = freezed,
  }) {
    return _then(_SubmitHomework(
      gradeId: gradeId == freezed ? _value.gradeId : gradeId as String,
      homeworkId:
          homeworkId == freezed ? _value.homeworkId : homeworkId as String,
    ));
  }
}

/// @nodoc
class _$_SubmitHomework implements _SubmitHomework {
  const _$_SubmitHomework({@required this.gradeId, @required this.homeworkId})
      : assert(gradeId != null),
        assert(homeworkId != null);

  @override
  final String gradeId;
  @override
  final String homeworkId;

  @override
  String toString() {
    return 'SubmitHomeworkEvent.submitHomework(gradeId: $gradeId, homeworkId: $homeworkId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SubmitHomework &&
            (identical(other.gradeId, gradeId) ||
                const DeepCollectionEquality()
                    .equals(other.gradeId, gradeId)) &&
            (identical(other.homeworkId, homeworkId) ||
                const DeepCollectionEquality()
                    .equals(other.homeworkId, homeworkId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gradeId) ^
      const DeepCollectionEquality().hash(homeworkId);

  @override
  _$SubmitHomeworkCopyWith<_SubmitHomework> get copyWith =>
      __$SubmitHomeworkCopyWithImpl<_SubmitHomework>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result homeworkToSubmitAdded(File homework),
    @required Result submitHomework(String gradeId, String homeworkId),
  }) {
    assert(homeworkToSubmitAdded != null);
    assert(submitHomework != null);
    return submitHomework(gradeId, homeworkId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result homeworkToSubmitAdded(File homework),
    Result submitHomework(String gradeId, String homeworkId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitHomework != null) {
      return submitHomework(gradeId, homeworkId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result homeworkToSubmitAdded(_HomeworkToSubmitAdded value),
    @required Result submitHomework(_SubmitHomework value),
  }) {
    assert(homeworkToSubmitAdded != null);
    assert(submitHomework != null);
    return submitHomework(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result homeworkToSubmitAdded(_HomeworkToSubmitAdded value),
    Result submitHomework(_SubmitHomework value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submitHomework != null) {
      return submitHomework(this);
    }
    return orElse();
  }
}

abstract class _SubmitHomework implements SubmitHomeworkEvent {
  const factory _SubmitHomework(
      {@required String gradeId,
      @required String homeworkId}) = _$_SubmitHomework;

  String get gradeId;
  String get homeworkId;
  _$SubmitHomeworkCopyWith<_SubmitHomework> get copyWith;
}

/// @nodoc
class _$SubmitHomeworkStateTearOff {
  const _$SubmitHomeworkStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ToSubmitHomework toSubmitHomework(File homework) {
    return _ToSubmitHomework(
      homework,
    );
  }

// ignore: unused_element
  _SubmittingHomework submittingHomework() {
    return const _SubmittingHomework();
  }

// ignore: unused_element
  _SuccessSubmit successSubmit() {
    return const _SuccessSubmit();
  }

// ignore: unused_element
  _ErrorSubmit errorSubmit(HomeworkFailure failure) {
    return _ErrorSubmit(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SubmitHomeworkState = _$SubmitHomeworkStateTearOff();

/// @nodoc
mixin _$SubmitHomeworkState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result toSubmitHomework(File homework),
    @required Result submittingHomework(),
    @required Result successSubmit(),
    @required Result errorSubmit(HomeworkFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result toSubmitHomework(File homework),
    Result submittingHomework(),
    Result successSubmit(),
    Result errorSubmit(HomeworkFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result toSubmitHomework(_ToSubmitHomework value),
    @required Result submittingHomework(_SubmittingHomework value),
    @required Result successSubmit(_SuccessSubmit value),
    @required Result errorSubmit(_ErrorSubmit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result toSubmitHomework(_ToSubmitHomework value),
    Result submittingHomework(_SubmittingHomework value),
    Result successSubmit(_SuccessSubmit value),
    Result errorSubmit(_ErrorSubmit value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SubmitHomeworkStateCopyWith<$Res> {
  factory $SubmitHomeworkStateCopyWith(
          SubmitHomeworkState value, $Res Function(SubmitHomeworkState) then) =
      _$SubmitHomeworkStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitHomeworkStateCopyWithImpl<$Res>
    implements $SubmitHomeworkStateCopyWith<$Res> {
  _$SubmitHomeworkStateCopyWithImpl(this._value, this._then);

  final SubmitHomeworkState _value;
  // ignore: unused_field
  final $Res Function(SubmitHomeworkState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SubmitHomeworkStateCopyWithImpl<$Res>
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
    return 'SubmitHomeworkState.initial()';
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
    @required Result toSubmitHomework(File homework),
    @required Result submittingHomework(),
    @required Result successSubmit(),
    @required Result errorSubmit(HomeworkFailure failure),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result toSubmitHomework(File homework),
    Result submittingHomework(),
    Result successSubmit(),
    Result errorSubmit(HomeworkFailure failure),
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
    @required Result toSubmitHomework(_ToSubmitHomework value),
    @required Result submittingHomework(_SubmittingHomework value),
    @required Result successSubmit(_SuccessSubmit value),
    @required Result errorSubmit(_ErrorSubmit value),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result toSubmitHomework(_ToSubmitHomework value),
    Result submittingHomework(_SubmittingHomework value),
    Result successSubmit(_SuccessSubmit value),
    Result errorSubmit(_ErrorSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubmitHomeworkState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ToSubmitHomeworkCopyWith<$Res> {
  factory _$ToSubmitHomeworkCopyWith(
          _ToSubmitHomework value, $Res Function(_ToSubmitHomework) then) =
      __$ToSubmitHomeworkCopyWithImpl<$Res>;
  $Res call({File homework});
}

/// @nodoc
class __$ToSubmitHomeworkCopyWithImpl<$Res>
    extends _$SubmitHomeworkStateCopyWithImpl<$Res>
    implements _$ToSubmitHomeworkCopyWith<$Res> {
  __$ToSubmitHomeworkCopyWithImpl(
      _ToSubmitHomework _value, $Res Function(_ToSubmitHomework) _then)
      : super(_value, (v) => _then(v as _ToSubmitHomework));

  @override
  _ToSubmitHomework get _value => super._value as _ToSubmitHomework;

  @override
  $Res call({
    Object homework = freezed,
  }) {
    return _then(_ToSubmitHomework(
      homework == freezed ? _value.homework : homework as File,
    ));
  }
}

/// @nodoc
class _$_ToSubmitHomework implements _ToSubmitHomework {
  const _$_ToSubmitHomework(this.homework) : assert(homework != null);

  @override
  final File homework;

  @override
  String toString() {
    return 'SubmitHomeworkState.toSubmitHomework(homework: $homework)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToSubmitHomework &&
            (identical(other.homework, homework) ||
                const DeepCollectionEquality()
                    .equals(other.homework, homework)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(homework);

  @override
  _$ToSubmitHomeworkCopyWith<_ToSubmitHomework> get copyWith =>
      __$ToSubmitHomeworkCopyWithImpl<_ToSubmitHomework>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result toSubmitHomework(File homework),
    @required Result submittingHomework(),
    @required Result successSubmit(),
    @required Result errorSubmit(HomeworkFailure failure),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return toSubmitHomework(homework);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result toSubmitHomework(File homework),
    Result submittingHomework(),
    Result successSubmit(),
    Result errorSubmit(HomeworkFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toSubmitHomework != null) {
      return toSubmitHomework(homework);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result toSubmitHomework(_ToSubmitHomework value),
    @required Result submittingHomework(_SubmittingHomework value),
    @required Result successSubmit(_SuccessSubmit value),
    @required Result errorSubmit(_ErrorSubmit value),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return toSubmitHomework(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result toSubmitHomework(_ToSubmitHomework value),
    Result submittingHomework(_SubmittingHomework value),
    Result successSubmit(_SuccessSubmit value),
    Result errorSubmit(_ErrorSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (toSubmitHomework != null) {
      return toSubmitHomework(this);
    }
    return orElse();
  }
}

abstract class _ToSubmitHomework implements SubmitHomeworkState {
  const factory _ToSubmitHomework(File homework) = _$_ToSubmitHomework;

  File get homework;
  _$ToSubmitHomeworkCopyWith<_ToSubmitHomework> get copyWith;
}

/// @nodoc
abstract class _$SubmittingHomeworkCopyWith<$Res> {
  factory _$SubmittingHomeworkCopyWith(
          _SubmittingHomework value, $Res Function(_SubmittingHomework) then) =
      __$SubmittingHomeworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittingHomeworkCopyWithImpl<$Res>
    extends _$SubmitHomeworkStateCopyWithImpl<$Res>
    implements _$SubmittingHomeworkCopyWith<$Res> {
  __$SubmittingHomeworkCopyWithImpl(
      _SubmittingHomework _value, $Res Function(_SubmittingHomework) _then)
      : super(_value, (v) => _then(v as _SubmittingHomework));

  @override
  _SubmittingHomework get _value => super._value as _SubmittingHomework;
}

/// @nodoc
class _$_SubmittingHomework implements _SubmittingHomework {
  const _$_SubmittingHomework();

  @override
  String toString() {
    return 'SubmitHomeworkState.submittingHomework()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmittingHomework);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result toSubmitHomework(File homework),
    @required Result submittingHomework(),
    @required Result successSubmit(),
    @required Result errorSubmit(HomeworkFailure failure),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return submittingHomework();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result toSubmitHomework(File homework),
    Result submittingHomework(),
    Result successSubmit(),
    Result errorSubmit(HomeworkFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittingHomework != null) {
      return submittingHomework();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result toSubmitHomework(_ToSubmitHomework value),
    @required Result submittingHomework(_SubmittingHomework value),
    @required Result successSubmit(_SuccessSubmit value),
    @required Result errorSubmit(_ErrorSubmit value),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return submittingHomework(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result toSubmitHomework(_ToSubmitHomework value),
    Result submittingHomework(_SubmittingHomework value),
    Result successSubmit(_SuccessSubmit value),
    Result errorSubmit(_ErrorSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittingHomework != null) {
      return submittingHomework(this);
    }
    return orElse();
  }
}

abstract class _SubmittingHomework implements SubmitHomeworkState {
  const factory _SubmittingHomework() = _$_SubmittingHomework;
}

/// @nodoc
abstract class _$SuccessSubmitCopyWith<$Res> {
  factory _$SuccessSubmitCopyWith(
          _SuccessSubmit value, $Res Function(_SuccessSubmit) then) =
      __$SuccessSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessSubmitCopyWithImpl<$Res>
    extends _$SubmitHomeworkStateCopyWithImpl<$Res>
    implements _$SuccessSubmitCopyWith<$Res> {
  __$SuccessSubmitCopyWithImpl(
      _SuccessSubmit _value, $Res Function(_SuccessSubmit) _then)
      : super(_value, (v) => _then(v as _SuccessSubmit));

  @override
  _SuccessSubmit get _value => super._value as _SuccessSubmit;
}

/// @nodoc
class _$_SuccessSubmit implements _SuccessSubmit {
  const _$_SuccessSubmit();

  @override
  String toString() {
    return 'SubmitHomeworkState.successSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SuccessSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result toSubmitHomework(File homework),
    @required Result submittingHomework(),
    @required Result successSubmit(),
    @required Result errorSubmit(HomeworkFailure failure),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return successSubmit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result toSubmitHomework(File homework),
    Result submittingHomework(),
    Result successSubmit(),
    Result errorSubmit(HomeworkFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successSubmit != null) {
      return successSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result toSubmitHomework(_ToSubmitHomework value),
    @required Result submittingHomework(_SubmittingHomework value),
    @required Result successSubmit(_SuccessSubmit value),
    @required Result errorSubmit(_ErrorSubmit value),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return successSubmit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result toSubmitHomework(_ToSubmitHomework value),
    Result submittingHomework(_SubmittingHomework value),
    Result successSubmit(_SuccessSubmit value),
    Result errorSubmit(_ErrorSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successSubmit != null) {
      return successSubmit(this);
    }
    return orElse();
  }
}

abstract class _SuccessSubmit implements SubmitHomeworkState {
  const factory _SuccessSubmit() = _$_SuccessSubmit;
}

/// @nodoc
abstract class _$ErrorSubmitCopyWith<$Res> {
  factory _$ErrorSubmitCopyWith(
          _ErrorSubmit value, $Res Function(_ErrorSubmit) then) =
      __$ErrorSubmitCopyWithImpl<$Res>;
  $Res call({HomeworkFailure failure});

  $HomeworkFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorSubmitCopyWithImpl<$Res>
    extends _$SubmitHomeworkStateCopyWithImpl<$Res>
    implements _$ErrorSubmitCopyWith<$Res> {
  __$ErrorSubmitCopyWithImpl(
      _ErrorSubmit _value, $Res Function(_ErrorSubmit) _then)
      : super(_value, (v) => _then(v as _ErrorSubmit));

  @override
  _ErrorSubmit get _value => super._value as _ErrorSubmit;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_ErrorSubmit(
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
class _$_ErrorSubmit implements _ErrorSubmit {
  const _$_ErrorSubmit(this.failure) : assert(failure != null);

  @override
  final HomeworkFailure failure;

  @override
  String toString() {
    return 'SubmitHomeworkState.errorSubmit(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorSubmit &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ErrorSubmitCopyWith<_ErrorSubmit> get copyWith =>
      __$ErrorSubmitCopyWithImpl<_ErrorSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result toSubmitHomework(File homework),
    @required Result submittingHomework(),
    @required Result successSubmit(),
    @required Result errorSubmit(HomeworkFailure failure),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return errorSubmit(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result toSubmitHomework(File homework),
    Result submittingHomework(),
    Result successSubmit(),
    Result errorSubmit(HomeworkFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorSubmit != null) {
      return errorSubmit(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result toSubmitHomework(_ToSubmitHomework value),
    @required Result submittingHomework(_SubmittingHomework value),
    @required Result successSubmit(_SuccessSubmit value),
    @required Result errorSubmit(_ErrorSubmit value),
  }) {
    assert(initial != null);
    assert(toSubmitHomework != null);
    assert(submittingHomework != null);
    assert(successSubmit != null);
    assert(errorSubmit != null);
    return errorSubmit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result toSubmitHomework(_ToSubmitHomework value),
    Result submittingHomework(_SubmittingHomework value),
    Result successSubmit(_SuccessSubmit value),
    Result errorSubmit(_ErrorSubmit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (errorSubmit != null) {
      return errorSubmit(this);
    }
    return orElse();
  }
}

abstract class _ErrorSubmit implements SubmitHomeworkState {
  const factory _ErrorSubmit(HomeworkFailure failure) = _$_ErrorSubmit;

  HomeworkFailure get failure;
  _$ErrorSubmitCopyWith<_ErrorSubmit> get copyWith;
}
