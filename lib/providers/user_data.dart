import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserData with ChangeNotifier {
  String _firstName;

  String _lastName;

  String _email;

  bool _dataSet = false;

  String get firstName {
    return _firstName;
  }

  String get lastName {
    return _lastName;
  }

  String get email {
    return _email;
  }

  bool get dataSet {
    return _dataSet;
  }

  void setDataSet(bool value) {
    _dataSet = value;
    print(
        "i am getting executed hello there dont touch me their this is my nono square");
    notifyListeners();
  }

  Future<void> fetchUserData(String id) async {
    final _userData =
        await FirebaseFirestore.instance.collection('users').doc(id).get();
    _email = _userData.data()['email'];
    _firstName = _userData.data()['firstName'];
    _lastName = _userData.data()['lastName'];
    notifyListeners();
  }
}
