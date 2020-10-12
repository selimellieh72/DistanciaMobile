import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edulb/domain/auth/i_auth_repository.dart';
import 'package:edulb/domain/homeworks/homework_failures.dart';
import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:edulb/domain/homeworks/submit.dart';
import 'package:edulb/domain/user_data.dart';
import 'package:edulb/injectable.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';
import 'package:edulb/domain/homeworks/i_homework_repository.dart';
import 'package:path/path.dart' as path;
import '../core/firebase_helper.dart';
import './homeworks_helper.dart';

@LazySingleton(as: IHomeworksRepository)
class FirebaseHomeworkRepository extends IHomeworksRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;
  FirebaseHomeworkRepository(this._firestore, this._firebaseStorage);

  @override
  Stream<Either<HomeworkFailure, List<HomeworkItem>>>
      watchHomeworksForGradeOrUser({
    @required Option<String> gradeId,
  }) async* {
    final _query = await gradeId.fold(
      () async => _firestore.userHomeworksCollection(),
      (gradeId) async => _firestore.homeworksCollection(gradeId),
    );

    yield* _query.orderBy('createdAt').snapshots().asyncMap(
      (snap) async {
        List<HomeworkItem> _homeworksList = [];
        if (snap.docs.length == 0) {
          return right<HomeworkFailure, List<HomeworkItem>>([]);
        }
        for (var homeDoc in snap.docs) {
          final _teacherData = UserData.fromFirestore(await _firestore
              .collection('users')
              .doc(homeDoc.data()['teacherId'])
              .get());
          final _isSubmitted = await homeDoc.homeworkIsSubmitted();
          print(_isSubmitted);
          final _homItem = HomeworkItem.fromFirestore(
              isSubmitted: _isSubmitted, snap: homeDoc, teacher: _teacherData);
          _homeworksList.add(_homItem);
        }
        return right<HomeworkFailure, List<HomeworkItem>>(
          _homeworksList.reversed.toList(),
        );
      },
    ).onErrorReturnWith((e) {
      return left(HomeworkFailure.unexpectedServerError());
    });
  }

  @override
  Future<Either<HomeworkFailure, Unit>> submitHomework({
    @required String gradeId,
    @required String homeworkId,
    @required File file,
  }) async {
    try {
      final _extension = path.extension(file.path);
      final _ref = _firebaseStorage
          .ref()
          .child('homeworks_submits')
          .child(Uuid().v1() + _extension);
      await _ref.putFile(file).onComplete;
      final _fileUrl = await _ref.getDownloadURL();
      await _firestore
          .getHomeworkResponses(
        gradeId: gradeId,
        uniqueHomeworkId: homeworkId,
      )
          .add(
        {
          'userId': getIt
              .get<IAuth>()
              .getUserId()
              .fold(() => throw UnimplementedError(), id),
          'fileUrl': _fileUrl,
        },
      );
      return right<HomeworkFailure, Unit>(unit);
    } catch (e) {
      return left(HomeworkFailure.unexpectedServerError());
    }
  }

  @override
  Future<Either<HomeworkFailure, List<Submit>>> getHomeworkSubmits(
      {String homeworkId, String gradeId}) async {
    try {
      final _gradeMembersIds = await _firestore.getGradeMembersIds(gradeId);
      final _responses = await _firestore
          .getHomeworkResponses(gradeId: gradeId, uniqueHomeworkId: homeworkId)
          .get();

      Map<String, String> _submittedUsersWithFileUrl = {};
      _responses.docs.forEach((response) =>
          _submittedUsersWithFileUrl.putIfAbsent(
              response.data()['userId'], () => response.data()['fileUrl']));
      final List<Submit> _submits = await Future.wait(_gradeMembersIds.map(
        (userId) async {
          final _userData = UserData.fromFirestore(
              await _firestore.collection('users').doc(userId).get());
          if (_submittedUsersWithFileUrl.containsKey(userId)) {
            return Submit(
              user: _userData,
              submittedFileUrl: some(_submittedUsersWithFileUrl[userId]),
            );
          }
          return Submit(user: _userData, submittedFileUrl: none());
        },
      ).toList());
      return right<HomeworkFailure, List<Submit>>(_submits);
    } catch (e) {
      print(e);
      return left(HomeworkFailure.unexpectedServerError());
    }
  }
}
