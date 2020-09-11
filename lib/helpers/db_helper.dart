import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:edulb/models/user_data.dart';

class DBHELPER {
  static Stream<UserData> streamUser(String id) {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .snapshots()
        .map(
          (snap) => UserData.fromFirestore(snap),
        );
  }

  static Future<void> addHomework({
    @required String title,
    @required String instructions,
  }) async {
    await FirebaseFirestore.instance.collection('homeworks').add({
      'title': title,
      'instructions': instructions,
      'teacherId': FirebaseAuth.instance.currentUser.uid,
      'createdAt': Timestamp.now(),
    });
  }

  static Stream<QuerySnapshot> fetchHomeworks() {
    return FirebaseFirestore.instance
        .collection('homeworks')
        .orderBy('createdAt')
        .snapshots();
  }
}
