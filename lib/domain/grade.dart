import 'package:cloud_firestore/cloud_firestore.dart';

class GradeItem {
  final String id;
  final String teacherId;
  final String gradeName;
  final String discipline;
  final DateTime createdAt;
  GradeItem(
    this.id,
    this.teacherId,
    this.gradeName,
    this.discipline,
    this.createdAt,
  );
  factory GradeItem.fromFirestore(DocumentSnapshot snap) {
    final _data = snap.data();
    return GradeItem(
      snap.id,
      _data['teacherId'] ?? '',
      _data['gradeName'] ?? 'Loading...',
      _data['discipline'] ?? 'Loading...',
      _data['createdAt'].toDate(),
    );
  }
}
