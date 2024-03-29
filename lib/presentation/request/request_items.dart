import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:edulb/helpers/db_helper.dart';
import 'package:edulb/domain/requests/pending_request.dart';
import 'package:edulb/domain/user_data.dart';
import 'package:edulb/presentation/request/request_item.dart';

class RequestItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PendingStudentGradeRequest>>(
      stream: DBHELPER.fetchPendingStudentGradeRequests(
          FirebaseAuth.instance.currentUser.uid),
      builder: (_, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        final _requests = snapshot.data;
        if (_requests.length == 0) {
          return Center(
            child: Text('No requests available'),
          );
        }
        return ListView.builder(
          itemCount: _requests.length,
          itemBuilder: (_, i) => FutureBuilder<UserData>(
              future: DBHELPER.fetchUser(_requests[i].studentId),
              builder: (_, snap) =>
                  snap.connectionState != ConnectionState.waiting
                      ? RequestItem(
                          _requests[i].id,
                          snap.data.firstName,
                          snap.data.lastName,
                          snap.data.imageUrl,
                          _requests[i].gradeName,
                        )
                      : Container()),
        );
      },
    );
  }
}
