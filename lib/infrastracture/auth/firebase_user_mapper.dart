import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edulb/domain/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  Future<UserData> toDomain(FirebaseFirestore firebaseFirestore) {
    return firebaseFirestore.collection('users').doc(uid).get().then(
          (supposedUser) => UserData.fromFirestore(supposedUser),
        );
  }
}
