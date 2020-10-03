part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unAuthenticated() = _UnAuthenticaded;
  const factory AuthState.authenticated({
    @required UserData user,
  }) = _Authenticaded;
}
