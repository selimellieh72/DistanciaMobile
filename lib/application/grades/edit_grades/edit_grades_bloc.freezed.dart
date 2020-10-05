// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_grades_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditGradesEventTearOff {
  const _$EditGradesEventTearOff();

// ignore: unused_element
  _EditGradeStarted editGradeStarted() {
    return const _EditGradeStarted();
  }

// ignore: unused_element
  _EditGradeStopped editGradeStopped() {
    return const _EditGradeStopped();
  }

// ignore: unused_element
  _EditGradeAddedOrRemoved editGradeAddedOrRemoved(String gradeId) {
    return _EditGradeAddedOrRemoved(
      gradeId,
    );
  }

// ignore: unused_element
  _GradesRemoved gradesRemoved() {
    return const _GradesRemoved();
  }
}

/// @nodoc
// ignore: unused_element
const $EditGradesEvent = _$EditGradesEventTearOff();

/// @nodoc
mixin _$EditGradesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result editGradeStarted(),
    @required Result editGradeStopped(),
    @required Result editGradeAddedOrRemoved(String gradeId),
    @required Result gradesRemoved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editGradeStarted(),
    Result editGradeStopped(),
    Result editGradeAddedOrRemoved(String gradeId),
    Result gradesRemoved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editGradeStarted(_EditGradeStarted value),
    @required Result editGradeStopped(_EditGradeStopped value),
    @required Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    @required Result gradesRemoved(_GradesRemoved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editGradeStarted(_EditGradeStarted value),
    Result editGradeStopped(_EditGradeStopped value),
    Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    Result gradesRemoved(_GradesRemoved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $EditGradesEventCopyWith<$Res> {
  factory $EditGradesEventCopyWith(
          EditGradesEvent value, $Res Function(EditGradesEvent) then) =
      _$EditGradesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditGradesEventCopyWithImpl<$Res>
    implements $EditGradesEventCopyWith<$Res> {
  _$EditGradesEventCopyWithImpl(this._value, this._then);

  final EditGradesEvent _value;
  // ignore: unused_field
  final $Res Function(EditGradesEvent) _then;
}

/// @nodoc
abstract class _$EditGradeStartedCopyWith<$Res> {
  factory _$EditGradeStartedCopyWith(
          _EditGradeStarted value, $Res Function(_EditGradeStarted) then) =
      __$EditGradeStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditGradeStartedCopyWithImpl<$Res>
    extends _$EditGradesEventCopyWithImpl<$Res>
    implements _$EditGradeStartedCopyWith<$Res> {
  __$EditGradeStartedCopyWithImpl(
      _EditGradeStarted _value, $Res Function(_EditGradeStarted) _then)
      : super(_value, (v) => _then(v as _EditGradeStarted));

  @override
  _EditGradeStarted get _value => super._value as _EditGradeStarted;
}

/// @nodoc
class _$_EditGradeStarted implements _EditGradeStarted {
  const _$_EditGradeStarted();

  @override
  String toString() {
    return 'EditGradesEvent.editGradeStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditGradeStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result editGradeStarted(),
    @required Result editGradeStopped(),
    @required Result editGradeAddedOrRemoved(String gradeId),
    @required Result gradesRemoved(),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return editGradeStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editGradeStarted(),
    Result editGradeStopped(),
    Result editGradeAddedOrRemoved(String gradeId),
    Result gradesRemoved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editGradeStarted != null) {
      return editGradeStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editGradeStarted(_EditGradeStarted value),
    @required Result editGradeStopped(_EditGradeStopped value),
    @required Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    @required Result gradesRemoved(_GradesRemoved value),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return editGradeStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editGradeStarted(_EditGradeStarted value),
    Result editGradeStopped(_EditGradeStopped value),
    Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    Result gradesRemoved(_GradesRemoved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editGradeStarted != null) {
      return editGradeStarted(this);
    }
    return orElse();
  }
}

abstract class _EditGradeStarted implements EditGradesEvent {
  const factory _EditGradeStarted() = _$_EditGradeStarted;
}

/// @nodoc
abstract class _$EditGradeStoppedCopyWith<$Res> {
  factory _$EditGradeStoppedCopyWith(
          _EditGradeStopped value, $Res Function(_EditGradeStopped) then) =
      __$EditGradeStoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditGradeStoppedCopyWithImpl<$Res>
    extends _$EditGradesEventCopyWithImpl<$Res>
    implements _$EditGradeStoppedCopyWith<$Res> {
  __$EditGradeStoppedCopyWithImpl(
      _EditGradeStopped _value, $Res Function(_EditGradeStopped) _then)
      : super(_value, (v) => _then(v as _EditGradeStopped));

  @override
  _EditGradeStopped get _value => super._value as _EditGradeStopped;
}

/// @nodoc
class _$_EditGradeStopped implements _EditGradeStopped {
  const _$_EditGradeStopped();

  @override
  String toString() {
    return 'EditGradesEvent.editGradeStopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditGradeStopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result editGradeStarted(),
    @required Result editGradeStopped(),
    @required Result editGradeAddedOrRemoved(String gradeId),
    @required Result gradesRemoved(),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return editGradeStopped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editGradeStarted(),
    Result editGradeStopped(),
    Result editGradeAddedOrRemoved(String gradeId),
    Result gradesRemoved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editGradeStopped != null) {
      return editGradeStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editGradeStarted(_EditGradeStarted value),
    @required Result editGradeStopped(_EditGradeStopped value),
    @required Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    @required Result gradesRemoved(_GradesRemoved value),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return editGradeStopped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editGradeStarted(_EditGradeStarted value),
    Result editGradeStopped(_EditGradeStopped value),
    Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    Result gradesRemoved(_GradesRemoved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editGradeStopped != null) {
      return editGradeStopped(this);
    }
    return orElse();
  }
}

abstract class _EditGradeStopped implements EditGradesEvent {
  const factory _EditGradeStopped() = _$_EditGradeStopped;
}

/// @nodoc
abstract class _$EditGradeAddedOrRemovedCopyWith<$Res> {
  factory _$EditGradeAddedOrRemovedCopyWith(_EditGradeAddedOrRemoved value,
          $Res Function(_EditGradeAddedOrRemoved) then) =
      __$EditGradeAddedOrRemovedCopyWithImpl<$Res>;
  $Res call({String gradeId});
}

/// @nodoc
class __$EditGradeAddedOrRemovedCopyWithImpl<$Res>
    extends _$EditGradesEventCopyWithImpl<$Res>
    implements _$EditGradeAddedOrRemovedCopyWith<$Res> {
  __$EditGradeAddedOrRemovedCopyWithImpl(_EditGradeAddedOrRemoved _value,
      $Res Function(_EditGradeAddedOrRemoved) _then)
      : super(_value, (v) => _then(v as _EditGradeAddedOrRemoved));

  @override
  _EditGradeAddedOrRemoved get _value =>
      super._value as _EditGradeAddedOrRemoved;

  @override
  $Res call({
    Object gradeId = freezed,
  }) {
    return _then(_EditGradeAddedOrRemoved(
      gradeId == freezed ? _value.gradeId : gradeId as String,
    ));
  }
}

/// @nodoc
class _$_EditGradeAddedOrRemoved implements _EditGradeAddedOrRemoved {
  const _$_EditGradeAddedOrRemoved(this.gradeId) : assert(gradeId != null);

  @override
  final String gradeId;

  @override
  String toString() {
    return 'EditGradesEvent.editGradeAddedOrRemoved(gradeId: $gradeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditGradeAddedOrRemoved &&
            (identical(other.gradeId, gradeId) ||
                const DeepCollectionEquality().equals(other.gradeId, gradeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gradeId);

  @override
  _$EditGradeAddedOrRemovedCopyWith<_EditGradeAddedOrRemoved> get copyWith =>
      __$EditGradeAddedOrRemovedCopyWithImpl<_EditGradeAddedOrRemoved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result editGradeStarted(),
    @required Result editGradeStopped(),
    @required Result editGradeAddedOrRemoved(String gradeId),
    @required Result gradesRemoved(),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return editGradeAddedOrRemoved(gradeId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editGradeStarted(),
    Result editGradeStopped(),
    Result editGradeAddedOrRemoved(String gradeId),
    Result gradesRemoved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editGradeAddedOrRemoved != null) {
      return editGradeAddedOrRemoved(gradeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editGradeStarted(_EditGradeStarted value),
    @required Result editGradeStopped(_EditGradeStopped value),
    @required Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    @required Result gradesRemoved(_GradesRemoved value),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return editGradeAddedOrRemoved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editGradeStarted(_EditGradeStarted value),
    Result editGradeStopped(_EditGradeStopped value),
    Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    Result gradesRemoved(_GradesRemoved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editGradeAddedOrRemoved != null) {
      return editGradeAddedOrRemoved(this);
    }
    return orElse();
  }
}

abstract class _EditGradeAddedOrRemoved implements EditGradesEvent {
  const factory _EditGradeAddedOrRemoved(String gradeId) =
      _$_EditGradeAddedOrRemoved;

  String get gradeId;
  _$EditGradeAddedOrRemovedCopyWith<_EditGradeAddedOrRemoved> get copyWith;
}

/// @nodoc
abstract class _$GradesRemovedCopyWith<$Res> {
  factory _$GradesRemovedCopyWith(
          _GradesRemoved value, $Res Function(_GradesRemoved) then) =
      __$GradesRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GradesRemovedCopyWithImpl<$Res>
    extends _$EditGradesEventCopyWithImpl<$Res>
    implements _$GradesRemovedCopyWith<$Res> {
  __$GradesRemovedCopyWithImpl(
      _GradesRemoved _value, $Res Function(_GradesRemoved) _then)
      : super(_value, (v) => _then(v as _GradesRemoved));

  @override
  _GradesRemoved get _value => super._value as _GradesRemoved;
}

/// @nodoc
class _$_GradesRemoved implements _GradesRemoved {
  const _$_GradesRemoved();

  @override
  String toString() {
    return 'EditGradesEvent.gradesRemoved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GradesRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result editGradeStarted(),
    @required Result editGradeStopped(),
    @required Result editGradeAddedOrRemoved(String gradeId),
    @required Result gradesRemoved(),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return gradesRemoved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result editGradeStarted(),
    Result editGradeStopped(),
    Result editGradeAddedOrRemoved(String gradeId),
    Result gradesRemoved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesRemoved != null) {
      return gradesRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result editGradeStarted(_EditGradeStarted value),
    @required Result editGradeStopped(_EditGradeStopped value),
    @required Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    @required Result gradesRemoved(_GradesRemoved value),
  }) {
    assert(editGradeStarted != null);
    assert(editGradeStopped != null);
    assert(editGradeAddedOrRemoved != null);
    assert(gradesRemoved != null);
    return gradesRemoved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result editGradeStarted(_EditGradeStarted value),
    Result editGradeStopped(_EditGradeStopped value),
    Result editGradeAddedOrRemoved(_EditGradeAddedOrRemoved value),
    Result gradesRemoved(_GradesRemoved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradesRemoved != null) {
      return gradesRemoved(this);
    }
    return orElse();
  }
}

abstract class _GradesRemoved implements EditGradesEvent {
  const factory _GradesRemoved() = _$_GradesRemoved;
}

/// @nodoc
class _$EditGradesStateTearOff {
  const _$EditGradesStateTearOff();

// ignore: unused_element
  _GradeNotEdit gradeNotEdit() {
    return const _GradeNotEdit();
  }

// ignore: unused_element
  _GradeEdit gradeEdit({@required List<String> editedGradesIds}) {
    return _GradeEdit(
      editedGradesIds: editedGradesIds,
    );
  }

// ignore: unused_element
  _GradeLoading gradeLoading() {
    return const _GradeLoading();
  }

// ignore: unused_element
  _GradeError gradeError({@required GradeFailure gradeFailure}) {
    return _GradeError(
      gradeFailure: gradeFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditGradesState = _$EditGradesStateTearOff();

/// @nodoc
mixin _$EditGradesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gradeNotEdit(),
    @required Result gradeEdit(List<String> editedGradesIds),
    @required Result gradeLoading(),
    @required Result gradeError(GradeFailure gradeFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gradeNotEdit(),
    Result gradeEdit(List<String> editedGradesIds),
    Result gradeLoading(),
    Result gradeError(GradeFailure gradeFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gradeNotEdit(_GradeNotEdit value),
    @required Result gradeEdit(_GradeEdit value),
    @required Result gradeLoading(_GradeLoading value),
    @required Result gradeError(_GradeError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gradeNotEdit(_GradeNotEdit value),
    Result gradeEdit(_GradeEdit value),
    Result gradeLoading(_GradeLoading value),
    Result gradeError(_GradeError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $EditGradesStateCopyWith<$Res> {
  factory $EditGradesStateCopyWith(
          EditGradesState value, $Res Function(EditGradesState) then) =
      _$EditGradesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditGradesStateCopyWithImpl<$Res>
    implements $EditGradesStateCopyWith<$Res> {
  _$EditGradesStateCopyWithImpl(this._value, this._then);

  final EditGradesState _value;
  // ignore: unused_field
  final $Res Function(EditGradesState) _then;
}

/// @nodoc
abstract class _$GradeNotEditCopyWith<$Res> {
  factory _$GradeNotEditCopyWith(
          _GradeNotEdit value, $Res Function(_GradeNotEdit) then) =
      __$GradeNotEditCopyWithImpl<$Res>;
}

/// @nodoc
class __$GradeNotEditCopyWithImpl<$Res>
    extends _$EditGradesStateCopyWithImpl<$Res>
    implements _$GradeNotEditCopyWith<$Res> {
  __$GradeNotEditCopyWithImpl(
      _GradeNotEdit _value, $Res Function(_GradeNotEdit) _then)
      : super(_value, (v) => _then(v as _GradeNotEdit));

  @override
  _GradeNotEdit get _value => super._value as _GradeNotEdit;
}

/// @nodoc
class _$_GradeNotEdit implements _GradeNotEdit {
  const _$_GradeNotEdit();

  @override
  String toString() {
    return 'EditGradesState.gradeNotEdit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GradeNotEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gradeNotEdit(),
    @required Result gradeEdit(List<String> editedGradesIds),
    @required Result gradeLoading(),
    @required Result gradeError(GradeFailure gradeFailure),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeNotEdit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gradeNotEdit(),
    Result gradeEdit(List<String> editedGradesIds),
    Result gradeLoading(),
    Result gradeError(GradeFailure gradeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeNotEdit != null) {
      return gradeNotEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gradeNotEdit(_GradeNotEdit value),
    @required Result gradeEdit(_GradeEdit value),
    @required Result gradeLoading(_GradeLoading value),
    @required Result gradeError(_GradeError value),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeNotEdit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gradeNotEdit(_GradeNotEdit value),
    Result gradeEdit(_GradeEdit value),
    Result gradeLoading(_GradeLoading value),
    Result gradeError(_GradeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeNotEdit != null) {
      return gradeNotEdit(this);
    }
    return orElse();
  }
}

abstract class _GradeNotEdit implements EditGradesState {
  const factory _GradeNotEdit() = _$_GradeNotEdit;
}

/// @nodoc
abstract class _$GradeEditCopyWith<$Res> {
  factory _$GradeEditCopyWith(
          _GradeEdit value, $Res Function(_GradeEdit) then) =
      __$GradeEditCopyWithImpl<$Res>;
  $Res call({List<String> editedGradesIds});
}

/// @nodoc
class __$GradeEditCopyWithImpl<$Res> extends _$EditGradesStateCopyWithImpl<$Res>
    implements _$GradeEditCopyWith<$Res> {
  __$GradeEditCopyWithImpl(_GradeEdit _value, $Res Function(_GradeEdit) _then)
      : super(_value, (v) => _then(v as _GradeEdit));

  @override
  _GradeEdit get _value => super._value as _GradeEdit;

  @override
  $Res call({
    Object editedGradesIds = freezed,
  }) {
    return _then(_GradeEdit(
      editedGradesIds: editedGradesIds == freezed
          ? _value.editedGradesIds
          : editedGradesIds as List<String>,
    ));
  }
}

/// @nodoc
class _$_GradeEdit implements _GradeEdit {
  const _$_GradeEdit({@required this.editedGradesIds})
      : assert(editedGradesIds != null);

  @override
  final List<String> editedGradesIds;

  @override
  String toString() {
    return 'EditGradesState.gradeEdit(editedGradesIds: $editedGradesIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeEdit &&
            (identical(other.editedGradesIds, editedGradesIds) ||
                const DeepCollectionEquality()
                    .equals(other.editedGradesIds, editedGradesIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(editedGradesIds);

  @override
  _$GradeEditCopyWith<_GradeEdit> get copyWith =>
      __$GradeEditCopyWithImpl<_GradeEdit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gradeNotEdit(),
    @required Result gradeEdit(List<String> editedGradesIds),
    @required Result gradeLoading(),
    @required Result gradeError(GradeFailure gradeFailure),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeEdit(editedGradesIds);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gradeNotEdit(),
    Result gradeEdit(List<String> editedGradesIds),
    Result gradeLoading(),
    Result gradeError(GradeFailure gradeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeEdit != null) {
      return gradeEdit(editedGradesIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gradeNotEdit(_GradeNotEdit value),
    @required Result gradeEdit(_GradeEdit value),
    @required Result gradeLoading(_GradeLoading value),
    @required Result gradeError(_GradeError value),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeEdit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gradeNotEdit(_GradeNotEdit value),
    Result gradeEdit(_GradeEdit value),
    Result gradeLoading(_GradeLoading value),
    Result gradeError(_GradeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeEdit != null) {
      return gradeEdit(this);
    }
    return orElse();
  }
}

abstract class _GradeEdit implements EditGradesState {
  const factory _GradeEdit({@required List<String> editedGradesIds}) =
      _$_GradeEdit;

  List<String> get editedGradesIds;
  _$GradeEditCopyWith<_GradeEdit> get copyWith;
}

/// @nodoc
abstract class _$GradeLoadingCopyWith<$Res> {
  factory _$GradeLoadingCopyWith(
          _GradeLoading value, $Res Function(_GradeLoading) then) =
      __$GradeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$GradeLoadingCopyWithImpl<$Res>
    extends _$EditGradesStateCopyWithImpl<$Res>
    implements _$GradeLoadingCopyWith<$Res> {
  __$GradeLoadingCopyWithImpl(
      _GradeLoading _value, $Res Function(_GradeLoading) _then)
      : super(_value, (v) => _then(v as _GradeLoading));

  @override
  _GradeLoading get _value => super._value as _GradeLoading;
}

/// @nodoc
class _$_GradeLoading implements _GradeLoading {
  const _$_GradeLoading();

  @override
  String toString() {
    return 'EditGradesState.gradeLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GradeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gradeNotEdit(),
    @required Result gradeEdit(List<String> editedGradesIds),
    @required Result gradeLoading(),
    @required Result gradeError(GradeFailure gradeFailure),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gradeNotEdit(),
    Result gradeEdit(List<String> editedGradesIds),
    Result gradeLoading(),
    Result gradeError(GradeFailure gradeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeLoading != null) {
      return gradeLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gradeNotEdit(_GradeNotEdit value),
    @required Result gradeEdit(_GradeEdit value),
    @required Result gradeLoading(_GradeLoading value),
    @required Result gradeError(_GradeError value),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gradeNotEdit(_GradeNotEdit value),
    Result gradeEdit(_GradeEdit value),
    Result gradeLoading(_GradeLoading value),
    Result gradeError(_GradeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeLoading != null) {
      return gradeLoading(this);
    }
    return orElse();
  }
}

abstract class _GradeLoading implements EditGradesState {
  const factory _GradeLoading() = _$_GradeLoading;
}

/// @nodoc
abstract class _$GradeErrorCopyWith<$Res> {
  factory _$GradeErrorCopyWith(
          _GradeError value, $Res Function(_GradeError) then) =
      __$GradeErrorCopyWithImpl<$Res>;
  $Res call({GradeFailure gradeFailure});

  $GradeFailureCopyWith<$Res> get gradeFailure;
}

/// @nodoc
class __$GradeErrorCopyWithImpl<$Res>
    extends _$EditGradesStateCopyWithImpl<$Res>
    implements _$GradeErrorCopyWith<$Res> {
  __$GradeErrorCopyWithImpl(
      _GradeError _value, $Res Function(_GradeError) _then)
      : super(_value, (v) => _then(v as _GradeError));

  @override
  _GradeError get _value => super._value as _GradeError;

  @override
  $Res call({
    Object gradeFailure = freezed,
  }) {
    return _then(_GradeError(
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
class _$_GradeError implements _GradeError {
  const _$_GradeError({@required this.gradeFailure})
      : assert(gradeFailure != null);

  @override
  final GradeFailure gradeFailure;

  @override
  String toString() {
    return 'EditGradesState.gradeError(gradeFailure: $gradeFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeError &&
            (identical(other.gradeFailure, gradeFailure) ||
                const DeepCollectionEquality()
                    .equals(other.gradeFailure, gradeFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gradeFailure);

  @override
  _$GradeErrorCopyWith<_GradeError> get copyWith =>
      __$GradeErrorCopyWithImpl<_GradeError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result gradeNotEdit(),
    @required Result gradeEdit(List<String> editedGradesIds),
    @required Result gradeLoading(),
    @required Result gradeError(GradeFailure gradeFailure),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeError(gradeFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result gradeNotEdit(),
    Result gradeEdit(List<String> editedGradesIds),
    Result gradeLoading(),
    Result gradeError(GradeFailure gradeFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeError != null) {
      return gradeError(gradeFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result gradeNotEdit(_GradeNotEdit value),
    @required Result gradeEdit(_GradeEdit value),
    @required Result gradeLoading(_GradeLoading value),
    @required Result gradeError(_GradeError value),
  }) {
    assert(gradeNotEdit != null);
    assert(gradeEdit != null);
    assert(gradeLoading != null);
    assert(gradeError != null);
    return gradeError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result gradeNotEdit(_GradeNotEdit value),
    Result gradeEdit(_GradeEdit value),
    Result gradeLoading(_GradeLoading value),
    Result gradeError(_GradeError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (gradeError != null) {
      return gradeError(this);
    }
    return orElse();
  }
}

abstract class _GradeError implements EditGradesState {
  const factory _GradeError({@required GradeFailure gradeFailure}) =
      _$_GradeError;

  GradeFailure get gradeFailure;
  _$GradeErrorCopyWith<_GradeError> get copyWith;
}
