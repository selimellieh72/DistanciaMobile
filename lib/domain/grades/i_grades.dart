import 'package:dartz/dartz.dart';
import 'package:edulb/domain/grades/grade.dart';
import 'package:edulb/domain/grades/grades_failures.dart';
import 'package:flutter/foundation.dart';

abstract class IGradesRepository {
  Stream<Either<GradeFailure, List<GradeItem>>> watchGrades();
}
