import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:edulb/domain/auth/i_auth_repository.dart';
import 'package:edulb/injectable.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Stream<QuerySnapshot> watchGrades() async* {
    final supposedUser = await getIt.get<IAuth>().getUser();
    final user = supposedUser.fold(() {}, id);

    yield* collection('grades')
        .orderBy('createdAt')
        .where(
          user.isTeacher ? 'teacherId' : 'usersIds',
          isEqualTo: user.isTeacher ? user.id : null,
          arrayContains: !user.isTeacher ? user.id : null,
        )
        .snapshots();
  }
}
