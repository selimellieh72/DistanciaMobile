import 'package:freezed_annotation/freezed_annotation.dart';
part 'grades_failures.freezed.dart';

@freezed
abstract class GradeFailure with _$GradeFailure {
  const factory GradeFailure.unexcpectedServerError() = _UnexcpectedServerError;
}
