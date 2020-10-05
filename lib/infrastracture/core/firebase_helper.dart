import 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreX on FirebaseFirestore {
  CollectionReference gradeCollection() => collection('grades');
  CollectionReference requestsCollection() => collection('requests');
}
