import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:edulb/domain/auth/i_auth.dart';
import 'package:edulb/domain/user_data.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuth _iAuth;
  AuthBloc(this._iAuth) : super(_Initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      checkAuthStatus: (e) async* {
        final supposedUser = await _iAuth.getUser();
        yield supposedUser.fold(
          () => AuthState.unAuthenticated(),
          (userData) {
            return AuthState.authenticated(user: userData);
          },
        );
      },
      logOut: (e) async* {
        await _iAuth.logOut();
        yield AuthState.unAuthenticated();
      },
    );
  }
}
