import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edulb/domain/auth/i_auth_repository.dart';
import 'package:edulb/domain/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuth)
class FirebaseAuthentication implements IAuth {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  FirebaseAuthentication(this._firebaseAuth, this._firestore);
  @override
  Future<Option<UserData>> getUser() async {
    if (_firebaseAuth.currentUser == null) {
      return none();
    } else {
      final _userData = await _firebaseAuth.currentUser.toDomain(_firestore);
      return some(_userData);
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
  }
}
