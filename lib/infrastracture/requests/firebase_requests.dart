import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edulb/domain/requests/I_requests.dart';
import 'package:injectable/injectable.dart';
import 'get_requests_from_firestore.dart';

@LazySingleton(as: IRequestsRepository)
class FirebaseRequests implements IRequestsRepository {
  final FirebaseFirestore _firestore;

  FirebaseRequests(this._firestore);

  Future<int> getRequestsLength() async {
    return _firestore.getRequests().then((value) => value.docs.length);
    // return _firestore.getRequests().then((snap) => snap.docs.length);
  }
}
