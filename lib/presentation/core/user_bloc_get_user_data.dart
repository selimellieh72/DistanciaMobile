import 'package:edulb/application/auth/auth_bloc.dart';
import 'package:edulb/domain/auth/unauthenticated_error.dart';

import 'package:edulb/domain/user_data.dart';

extension AuthBlocX on AuthState {
  UserData getUserData() {
    return maybeMap(
      authenticated: (s) => s.user,
      orElse: () => throw UnauthenticatedError(),
    );
  }
}
