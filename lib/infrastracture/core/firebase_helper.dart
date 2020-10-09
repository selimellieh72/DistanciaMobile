import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edulb/domain/auth/i_auth_repository.dart';
import 'package:edulb/injectable.dart';
import 'package:flutter/foundation.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference gradeCollection() => collection('grades');
  Future<Query> userGradeCollection() async {
    final _supposedUser = await getIt.get<IAuth>().getUser();
    final _userData = _supposedUser.fold(() => throw UnimplementedError(), id);
    if (_userData.isTeacher) {
      return collection('grades').where(
        'teacherId',
        isEqualTo: _userData.id,
      );
    }

    return collection('grades').where(
      'usersIds',
      arrayContains: _userData.id,
    );
  }

  CollectionReference requestsCollection() => collection('requests');

  CollectionReference homeworksCollection(String gradeId) =>
      collection('grades/$gradeId/homeworks');
  Future<Query> userHomeworksCollection() async {
    final _userGradesQuery = await this.userGradeCollection();
    final _userGrades = await _userGradesQuery.get();
    final _gradesId = _userGrades.docs.map((grade) => grade.id).toList();
    return collectionGroup('homeworks').where('gradeId', whereIn: _gradesId);
  }

  CollectionReference getHomeworkResponses({
    @required String gradeId,
    @required String uniqueHomeworkId,
  }) {
    return collection('grades/$gradeId/homeworks/$uniqueHomeworkId/responses');
  }
}
