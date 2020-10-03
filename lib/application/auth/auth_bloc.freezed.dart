// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UnAuthenticaded unAuthenticated() {
    return const _UnAuthenticaded();
  }

// ignore: unused_element
  _Authenticaded authenticated({@required UserData user}) {
    return _Authenticaded(
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unAuthenticated(),
    @required Result authenticated(UserData user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unAuthenticated(),
    Result authenticated(UserData user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unAuthenticated(_UnAuthenticaded value),
    @required Result authenticated(_Authenticaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unAuthenticated(_UnAuthenticaded value),
    Result authenticated(_Authenticaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
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
    return 'AuthState.initial()';
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
    @required Result unAuthenticated(),
    @required Result authenticated(UserData user),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unAuthenticated(),
    Result authenticated(UserData user),
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
    @required Result unAuthenticated(_UnAuthenticaded value),
    @required Result authenticated(_Authenticaded value),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unAuthenticated(_UnAuthenticaded value),
    Result authenticated(_Authenticaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UnAuthenticadedCopyWith<$Res> {
  factory _$UnAuthenticadedCopyWith(
          _UnAuthenticaded value, $Res Function(_UnAuthenticaded) then) =
      __$UnAuthenticadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthenticadedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnAuthenticadedCopyWith<$Res> {
  __$UnAuthenticadedCopyWithImpl(
      _UnAuthenticaded _value, $Res Function(_UnAuthenticaded) _then)
      : super(_value, (v) => _then(v as _UnAuthenticaded));

  @override
  _UnAuthenticaded get _value => super._value as _UnAuthenticaded;
}

/// @nodoc
class _$_UnAuthenticaded implements _UnAuthenticaded {
  const _$_UnAuthenticaded();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnAuthenticaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unAuthenticated(),
    @required Result authenticated(UserData user),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unAuthenticated(),
    Result authenticated(UserData user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unAuthenticated(_UnAuthenticaded value),
    @required Result authenticated(_Authenticaded value),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unAuthenticated(_UnAuthenticaded value),
    Result authenticated(_Authenticaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticaded implements AuthState {
  const factory _UnAuthenticaded() = _$_UnAuthenticaded;
}

/// @nodoc
abstract class _$AuthenticadedCopyWith<$Res> {
  factory _$AuthenticadedCopyWith(
          _Authenticaded value, $Res Function(_Authenticaded) then) =
      __$AuthenticadedCopyWithImpl<$Res>;
  $Res call({UserData user});
}

/// @nodoc
class __$AuthenticadedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticadedCopyWith<$Res> {
  __$AuthenticadedCopyWithImpl(
      _Authenticaded _value, $Res Function(_Authenticaded) _then)
      : super(_value, (v) => _then(v as _Authenticaded));

  @override
  _Authenticaded get _value => super._value as _Authenticaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Authenticaded(
      user: user == freezed ? _value.user : user as UserData,
    ));
  }
}

/// @nodoc
class _$_Authenticaded implements _Authenticaded {
  const _$_Authenticaded({@required this.user}) : assert(user != null);

  @override
  final UserData user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Authenticaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$AuthenticadedCopyWith<_Authenticaded> get copyWith =>
      __$AuthenticadedCopyWithImpl<_Authenticaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result unAuthenticated(),
    @required Result authenticated(UserData user),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result unAuthenticated(),
    Result authenticated(UserData user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result unAuthenticated(_UnAuthenticaded value),
    @required Result authenticated(_Authenticaded value),
  }) {
    assert(initial != null);
    assert(unAuthenticated != null);
    assert(authenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result unAuthenticated(_UnAuthenticaded value),
    Result authenticated(_Authenticaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticaded implements AuthState {
  const factory _Authenticaded({@required UserData user}) = _$_Authenticaded;

  UserData get user;
  _$AuthenticadedCopyWith<_Authenticaded> get copyWith;
}

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _CheckAuthStatus checkAuthStatus() {
    return const _CheckAuthStatus();
  }

// ignore: unused_element
  _LogOut logOut() {
    return const _LogOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthStatus(),
    @required Result logOut(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthStatus(),
    Result logOut(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthStatus(_CheckAuthStatus value),
    @required Result logOut(_LogOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthStatus(_CheckAuthStatus value),
    Result logOut(_LogOut value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$CheckAuthStatusCopyWith<$Res> {
  factory _$CheckAuthStatusCopyWith(
          _CheckAuthStatus value, $Res Function(_CheckAuthStatus) then) =
      __$CheckAuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckAuthStatusCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$CheckAuthStatusCopyWith<$Res> {
  __$CheckAuthStatusCopyWithImpl(
      _CheckAuthStatus _value, $Res Function(_CheckAuthStatus) _then)
      : super(_value, (v) => _then(v as _CheckAuthStatus));

  @override
  _CheckAuthStatus get _value => super._value as _CheckAuthStatus;
}

/// @nodoc
class _$_CheckAuthStatus implements _CheckAuthStatus {
  const _$_CheckAuthStatus();

  @override
  String toString() {
    return 'AuthEvent.checkAuthStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckAuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthStatus(),
    @required Result logOut(),
  }) {
    assert(checkAuthStatus != null);
    assert(logOut != null);
    return checkAuthStatus();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthStatus(),
    Result logOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthStatus != null) {
      return checkAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthStatus(_CheckAuthStatus value),
    @required Result logOut(_LogOut value),
  }) {
    assert(checkAuthStatus != null);
    assert(logOut != null);
    return checkAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthStatus(_CheckAuthStatus value),
    Result logOut(_LogOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkAuthStatus != null) {
      return checkAuthStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthStatus implements AuthEvent {
  const factory _CheckAuthStatus() = _$_CheckAuthStatus;
}

/// @nodoc
abstract class _$LogOutCopyWith<$Res> {
  factory _$LogOutCopyWith(_LogOut value, $Res Function(_LogOut) then) =
      __$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$LogOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogOutCopyWith<$Res> {
  __$LogOutCopyWithImpl(_LogOut _value, $Res Function(_LogOut) _then)
      : super(_value, (v) => _then(v as _LogOut));

  @override
  _LogOut get _value => super._value as _LogOut;
}

/// @nodoc
class _$_LogOut implements _LogOut {
  const _$_LogOut();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkAuthStatus(),
    @required Result logOut(),
  }) {
    assert(checkAuthStatus != null);
    assert(logOut != null);
    return logOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkAuthStatus(),
    Result logOut(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkAuthStatus(_CheckAuthStatus value),
    @required Result logOut(_LogOut value),
  }) {
    assert(checkAuthStatus != null);
    assert(logOut != null);
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkAuthStatus(_CheckAuthStatus value),
    Result logOut(_LogOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthEvent {
  const factory _LogOut() = _$_LogOut;
}
