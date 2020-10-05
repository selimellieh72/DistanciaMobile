import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edulb/domain/auth/i_auth_repository.dart';

import 'package:edulb/injectable.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  Future<QuerySnapshot> getRequests() async {
    final _supposedUser = await getIt.get<IAuth>().getUser();

    final _userId = _supposedUser.fold(() {}, (user) => user.id);
    return collection('requests')
        .where('teacherId', isEqualTo: _userId)
        .where('status', isEqualTo: 'pending')
        .get();
  }
}
