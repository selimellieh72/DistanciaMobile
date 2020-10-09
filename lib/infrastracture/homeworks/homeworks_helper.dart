import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edulb/domain/auth/i_auth_repository.dart';
import 'package:edulb/injectable.dart';
import 'package:dartz/dartz.dart';

extension QueryDocumentSnapshotX on QueryDocumentSnapshot {
  Future<bool> homeworkIsSubmitted() async {
    final _userId = getIt
        .get<IAuth>()
        .getUserId()
        .fold(() => throw UnimplementedError(), id);
    final _query = await getIt
        .get<FirebaseFirestore>()
        .collection('${reference.path}/responses')
        .where('userId', isEqualTo: _userId)
        .get();
    return _query.docs.length != 0;
  }
}
