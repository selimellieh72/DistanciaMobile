import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'get_requests_from_firestore.dart';

@lazySingleton
class FirebaseRequests {
  FirebaseFirestore _firestore;

  Future<int> getRequestsLength() async {
    return FirebaseFirestore.instance
        .getRequests()
        .then((value) => value.docs.length);
    // return _firestore.getRequests().then((snap) => snap.docs.length);
  }
}
