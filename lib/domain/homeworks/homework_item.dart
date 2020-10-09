import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class HomeworkItem {
  final String id;
  final String title;
  final String instructions;
  final String gradeId;
  final bool isSubmitted;
  final DateTime date;

  HomeworkItem({
    @required this.id,
    @required this.title,
    @required this.instructions,
    @required this.gradeId,
    this.isSubmitted,
    @required this.date,
  });

  factory HomeworkItem.fromFirestore(DocumentSnapshot snap, bool isSubmitted) {
    final data = snap.data();
    return HomeworkItem(
        id: snap.id,
        title: data['title'],
        instructions: data['instructions'],
        gradeId: data['gradeId'],
        date: data['createdAt'].toDate(),
        isSubmitted: isSubmitted);
  }
}
