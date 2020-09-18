import 'package:flutter/material.dart';

import 'package:edulb/widgets/requests/request_items.dart';

class RequestsScreen extends StatelessWidget {
  static const routeName = '/teachers/requests';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
      ),
      body: RequestItems(
        firstName: null,
        gradeName: null,
        lastName: null,
        profileUrl: null,
      ),
    );
  }
}
