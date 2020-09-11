import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';

class UserData with ChangeNotifier {
  String id;

  String firstName;

  String lastName;

  String email;

  String imageUrl;

  bool isTeacher;

  UserData(
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.imageUrl,
    this.isTeacher,
  );
  factory UserData.fromFirestore(DocumentSnapshot doc) {
    Map _data = doc.data();
    return UserData(
      doc.id,
      _data == null ? '' : _data['firstName'] ?? '',
      _data == null ? '' : _data['lastName'] ?? '',
      _data == null ? '' : _data['email'] ?? '',
      _data == null ? '' : _data['imageURL'] ?? '',
      _data == null ? null : _data['isTeacher'] ?? null,
    );
  }
}
