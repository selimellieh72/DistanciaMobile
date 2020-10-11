import 'package:dartz/dartz.dart';
import 'package:edulb/domain/user_data.dart';
import 'package:flutter/foundation.dart';

class Submit {
  final UserData user;
  final Option<String> submittedFileUrl;

  const Submit({
    @required this.user,
    @required this.submittedFileUrl,
  });
}
