import 'package:edulb/helpers/db_helper.dart';
import 'package:flutter/foundation.dart';

class AppInfo with ChangeNotifier {
  bool _isEditting = false;
  bool _isDrawerOpened = false;
  List<String> _selectedGradesIds = [];

  get isEditting => _isEditting;
  get isDrawerOpened => _isDrawerOpened;
  get selectedGradesIds => _selectedGradesIds;

  void setIsEditting() {
    _isEditting = !isEditting;
    if (isEditting == false) {
      _selectedGradesIds = [];
    }
    notifyListeners();
  }

  void setIsDrawerOpened(bool value) {
    _isDrawerOpened = value;
    notifyListeners();
  }

  void addOrRemoveSelectedGradeId(String id) {
    if (_selectedGradesIds.contains(id)) {
      _selectedGradesIds.remove(id);
    } else {
      _selectedGradesIds.add(id);
    }

    notifyListeners();
  }

  void deleteGrades() {
    DBHELPER.deleteGradeWithIds(_selectedGradesIds);
    _selectedGradesIds = [];
    _isEditting = false;
    notifyListeners();
  }

  void resetAppInfo() {
    _isEditting = false;
    _isDrawerOpened = false;
    _selectedGradesIds = [];
  }
}
