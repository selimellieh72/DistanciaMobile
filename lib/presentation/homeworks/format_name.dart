import 'package:flutter/foundation.dart';

class FormatName {
  static String formatName(
      {@required String firstName, @required String lastName}) {
    if (lastName.length >= 7 || firstName.length >= 7) {
      return '$lastName ${firstName.substring(0, 1)}.';
    }
    return '${lastName} ${firstName}';
  }
}
