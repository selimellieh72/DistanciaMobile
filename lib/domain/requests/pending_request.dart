import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class PendingStudentGradeRequest {
  final String id;
  final DateTime createdAt;
  final String gradeName;
  final String studentId;
  final String teacherId;

  PendingStudentGradeRequest({
    @required this.id,
    @required this.createdAt,
    @required this.gradeName,
    @required this.studentId,
    @required this.teacherId,
  });
  factory PendingStudentGradeRequest.fromFirestore(QueryDocumentSnapshot snap) {
    final data = snap.data();
    return PendingStudentGradeRequest(
      id: snap.id,
      createdAt: data['createdAt'].toDate(),
      gradeName: data['gradeName'],
      studentId: data['studentId'],
      teacherId: data['teacherId'],
    );
  }
}
