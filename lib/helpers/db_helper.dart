import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:edulb/models/user_data.dart';
import 'package:edulb/models/grade.dart';

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
    try {
      await FirebaseFirestore.instance.collection('homeworks').add({
        'title': title,
        'instructions': instructions,
        'teacherId': FirebaseAuth.instance.currentUser.uid,
        'createdAt': Timestamp.now(),
      });
    } catch (error) {
      throw (error);
    }
  }

  static Stream<QuerySnapshot> fetchHomeworks() {
    return FirebaseFirestore.instance
        .collection('homeworks')
        .orderBy('createdAt')
        .snapshots();
  }

  static Future<void> addGrade({
    @required bool isTeacher,
    @required String gradeName,
    @required String discipline,
  }) async {
    if (!isTeacher) {
      return;
    }

    try {
      await FirebaseFirestore.instance.collection('grades').add(
        {
          'teacherId': FirebaseAuth.instance.currentUser.uid,
          'createdAt': Timestamp.now(),
          'gradeName': gradeName,
          'discipline': discipline,
        },
      );
    } catch (error) {
      throw (error);
    }
  }

  static Stream<List<GradeItem>> fetchGrades() {
    return FirebaseFirestore.instance.collection('grades').snapshots().map(
          (
            snap,
          ) =>
              snap.docs
                  .map(
                    (doc) => GradeItem.fromFirestore(doc),
                  )
                  .toList(),
        );
  }
}
