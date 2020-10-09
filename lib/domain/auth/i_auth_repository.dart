import 'package:dartz/dartz.dart';
import 'package:edulb/domain/user_data.dart';

abstract class IAuth {
  Future<Option<UserData>> getUser();
  Future<void> logOut();
  Option<String> getUserId();
}
