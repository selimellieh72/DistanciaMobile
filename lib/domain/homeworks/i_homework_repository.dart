import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:edulb/domain/homeworks/homework_failures.dart';
import 'package:edulb/domain/homeworks/homework_item.dart';
import 'package:edulb/domain/homeworks/submit.dart';
import 'package:flutter/foundation.dart';

abstract class IHomeworksRepository {
  Stream<Either<HomeworkFailure, List<HomeworkItem>>>
      watchHomeworksForGradeOrUser({@required Option<String> gradeId});
  Future<Either<HomeworkFailure, Unit>> submitHomework({
    @required String homeworkId,
    @required String gradeId,
    @required File file,
  });
  Future<Either<HomeworkFailure, List<Submit>>> getHomeworkSubmits({
    @required String homeworkId,
    @required String gradeId,
  });
}
