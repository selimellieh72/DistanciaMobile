import 'package:flutter/foundation.dart';

class AppInfo with ChangeNotifier {
  bool _isEditting = false;
  bool _isDrawerOpened = false;

  get isEditting => _isEditting;

  void setIsEditting() {
    _isEditting = !isEditting;
    notifyListeners();
  }

  get isDrawerOpened => _isDrawerOpened;

  void setIsDrawerOpened(bool value) {
    _isDrawerOpened = value;
    notifyListeners();
  }
}
