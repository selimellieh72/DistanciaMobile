import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_failures.freezed.dart';

@freezed
abstract class HomeworkFailure with _$HomeworkFailure {
  const factory HomeworkFailure.unexpectedServerError() =
      _UnexpectedServerError;
}
