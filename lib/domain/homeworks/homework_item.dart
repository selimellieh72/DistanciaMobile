import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class HomeworkItem {
  final String id;
  final String title;
  final String instructions;
  final DateTime date;

  HomeworkItem({
    @required this.id,
    @required this.title,
    @required this.instructions,
    @required this.date,
  });

  factory HomeworkItem.fromFirestore(DocumentSnapshot snap) {
    final data = snap.data();
    return HomeworkItem(
      id: snap.id,
      title: data['title'],
      instructions: data['instructions'],
      date: data['createdAt'].toDate(),
    );
  }
}
