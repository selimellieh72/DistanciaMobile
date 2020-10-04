import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edulb/domain/grades/grades_failures.dart';
import 'package:edulb/domain/grades/i_grades.dart';
import 'package:edulb/domain/grades/grade.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';
import './get_grades_from_firestore.dart';

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
}
