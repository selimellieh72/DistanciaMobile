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

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is HomeworkItem &&
        o.id == id &&
        o.title == title &&
        o.instructions == instructions &&
        o.date == date;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ instructions.hashCode ^ date.hashCode;
  }
}
