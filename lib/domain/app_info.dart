import 'package:edulb/helpers/db_helper.dart';
import 'package:flutter/foundation.dart';

class AppInfo with ChangeNotifier {
  bool _isEditting = false;

  List<String> _selectedGradesIds = [];

  get isEditting => _isEditting;
  get selectedGradesIds => _selectedGradesIds;

  void setIsEditting() {
    _isEditting = !isEditting;
    if (isEditting == false) {
      _selectedGradesIds = [];
    }
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
    _selectedGradesIds = [];
  }
}
