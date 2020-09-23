import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:edulb/helpers/already_exists_exception.dart';
import 'package:edulb/helpers/does_not_exist_exception.dart';
import 'package:edulb/models/pending_request.dart';
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

  static Future<UserData> fetchUser(String id) async {
    final _userSnap =
        await FirebaseFirestore.instance.collection('users').doc(id).get();
    return UserData.fromFirestore(_userSnap);
  }

  static Future<String> getUidFromEmail(String email) async {
    final _result = await FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: email)
        .get();
    if (_result.docs.length <= 0) {
      throw DoesNotExistException(
          'No teacher found with the given email. Please try again');
    }
    return _result.docs[0].id;
  }

  static Future<void> addHomework({
    @required String title,
    @required String instructions,
    @required String gradeId,
  }) async {
    try {
      await FirebaseFirestore.instance
          .collection('grades/$gradeId/homeworks')
          .add({
        'title': title,
        'instructions': instructions,
        'teacherId': FirebaseAuth.instance.currentUser.uid,
        'createdAt': Timestamp.now(),
      });
    } catch (error) {
      throw (error);
    }
  }

  static Stream<QuerySnapshot> fetchHomeworks(String gradeId) {
    return FirebaseFirestore.instance
        .collection('grades/$gradeId/homeworks')
        .orderBy('createdAt')
        .snapshots();
  }

  static Future<void> addGrade({
    @required bool isTeacher,
    @required String teacherId,
    @required String gradeName,
    @required String discipline,
  }) async {
    if (!isTeacher) {
      return;
    }
    final bool _alreadyExists =
        await DBHELPER.checkIfGradeWithThisNameExist(gradeName, teacherId);
    if (_alreadyExists) {
      throw AlreadyExistsException(
          'You cannot have two grades with the same name. Please choose another name.');
    }
    try {
      await FirebaseFirestore.instance.collection('grades').add(
        {
          'teacherId': FirebaseAuth.instance.currentUser.uid,
          'createdAt': Timestamp.now(),
          'gradeName': gradeName,
          'discipline': discipline,
          'usersIds': [],
        },
      );
    } catch (error) {
      throw (error);
    }
  }

  static Stream<List<GradeItem>> fetchGrades({
    @required bool isTeacher,
    String userId,
  }) {
    return FirebaseFirestore.instance
        .collection('grades')
        .orderBy('createdAt')
        .where(
          isTeacher ? 'teacherId' : 'usersIds',
          isEqualTo: isTeacher ? userId : null,
          arrayContains: !isTeacher ? userId : null,
        )
        .snapshots()
        .map((
          snap,
        ) =>
            snap.docs
                .map(
                  (doc) => GradeItem.fromFirestore(doc),
                )
                .toList()
                .reversed
                .toList());
  }

  static Future<bool> checkIfGradeWithThisNameExist(
      String name, String teacherId) async {
    final _results = await FirebaseFirestore.instance
        .collection('grades')
        .where('gradeName', isEqualTo: name)
        .where('teacherId', isEqualTo: teacherId)
        .get();

    return _results.docs.length != 0;
  }

  static Future<void> addRequest(
      String studentId, String teacherEmail, String gradeName) async {
    try {
      final _teacherId = await getUidFromEmail(teacherEmail);

      final _doesExist =
          await checkIfGradeWithThisNameExist(gradeName, _teacherId);
      if (!_doesExist) {
        throw DoesNotExistException('Wrong grade name. Please try again');
      }
      final _requests = await FirebaseFirestore.instance
          .collection('requests')
          .where('studentId', isEqualTo: studentId)
          .where('teacherId', isEqualTo: _teacherId)
          .where('gradeName', isEqualTo: gradeName)
          .get();

      if (_requests.docs.length != 0) {
        throw AlreadyExistsException(
            'You already sended a request to that teacher');
      }
      FirebaseFirestore.instance.collection('requests').add(
        {
          'type': 'studentGradeRequest',
          'status': 'pending',
          'studentId': studentId,
          'teacherId': _teacherId,
          'gradeName': gradeName,
          'createdAt': Timestamp.now()
        },
      );
    } catch (e) {
      throw (e);
    }
  }

  static Stream<List<PendingStudentGradeRequest>>
      fetchPendingStudentGradeRequests(String teacherId) {
    return FirebaseFirestore.instance
        .collection('requests')
        .where('teacherId', isEqualTo: teacherId)
        .where('status', isEqualTo: 'pending')
        .snapshots()
        .map(
          (snap) => snap.docs
              .map(
                (request) => PendingStudentGradeRequest.fromFirestore(
                  request,
                ),
              )
              .toList(),
        );
  }

  static void declineRequest(String requestId) {
    FirebaseFirestore.instance.collection('requests').doc(requestId).update(
      {
        'status': 'declined',
      },
    );
  }

  static void acceptRequest(String requestId) async {
    final _requestDocRef =
        FirebaseFirestore.instance.collection('requests').doc(requestId);
    _requestDocRef.update(
      {
        'status': 'accepted',
      },
    );
    // TODO: Implement below code with cloud functions for security
    final _requestDoc = await _requestDocRef.get();
    final _teacherId = _requestDoc.data()['teacherId'];
    final _studentId = _requestDoc.data()['studentId'];
    final _gradeName = _requestDoc.data()['gradeName'];
    final _gradeDocs = await FirebaseFirestore.instance
        .collection('grades')
        .where('gradeName', isEqualTo: _gradeName)
        .where('teacherId', isEqualTo: _teacherId)
        .get();
    final _gradeDocRef = _gradeDocs.docs[0].reference;
    _gradeDocRef.update(
      {
        'usersIds': FieldValue.arrayUnion([_studentId]),
      },
    );
  }

  static void deleteGradeWithIds(List<String> gradeIds) {
    gradeIds.forEach(
      (id) async {
        FirebaseFirestore.instance.collection('grades').doc(id).delete();
        // TODO: Implement  with cloud functions for more security
        final _grade =
            await FirebaseFirestore.instance.collection('grades').doc(id).get();
        final _gradeName = _grade.data()['gradeName'];
        final _teacherId = _grade.data()['teacherId'];
        final _toRemoveRequests = await FirebaseFirestore.instance
            .collection('requests')
            .where('gradeName', isEqualTo: _gradeName)
            .where('teacherId', isEqualTo: _teacherId)
            .get();
        _toRemoveRequests.docs.forEach((request) {
          request.reference.delete();
        });
      },
    );
  }
}
