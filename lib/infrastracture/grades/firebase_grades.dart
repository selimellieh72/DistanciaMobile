import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edulb/domain/grades/grades_failures.dart';
import 'package:edulb/domain/grades/i_grades_repository.dart';
import 'package:edulb/domain/grades/grade.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';
import './get_grades_from_firestore.dart';
import '../core/firebase_helper.dart';

@LazySingleton(as: IGradesRepository)
class FirebaseGradesRepository implements IGradesRepository {
  final FirebaseFirestore _firestore;

  FirebaseGradesRepository(this._firestore);
  @override
  Stream<Either<GradeFailure, List<GradeItem>>> watchGrades() {
    return _firestore
        .watchGrades()
        .map(
          (
            snap,
          ) =>
              right<GradeFailure, List<GradeItem>>(snap.docs
                  .map(
                    (doc) => GradeItem.fromFirestore(doc),
                  )
                  .toList()
                  .reversed
                  .toList()),
        )
        .onErrorReturnWith(
          (_) => left(
            GradeFailure.unexcpectedServerError(),
          ),
        );
  }

  @override
  Future<Either<GradeFailure, Unit>> deleteGradeWithIds(
      List<String> gradeIds) async {
    try {
      await gradeIds.forEach((id) async {
        final _grade =
            await FirebaseFirestore.instance.gradeCollection().doc(id).get();
        FirebaseFirestore.instance.gradeCollection().doc(id).delete();
        // TODO: Implement  with cloud functions for more security

        final _gradeName = _grade.data()['gradeName'];
        final _teacherId = _grade.data()['teacherId'];
        final _toRemoveRequests = await FirebaseFirestore.instance
            .requestsCollection()
            .where('gradeName', isEqualTo: _gradeName)
            .where('teacherId', isEqualTo: _teacherId)
            .get();
        await _toRemoveRequests.docs.forEach((request) async {
          await request.reference.delete();
        });
      });
      return right<GradeFailure, Unit>(unit);
    } catch (_) {
      return left(GradeFailure.unexcpectedServerError());
    }
  }
}
