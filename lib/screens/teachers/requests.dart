import 'package:edulb/widgets/stack/background_widget.dart';
import 'package:flutter/material.dart';

import 'package:edulb/widgets/requests/request_items.dart';

class RequestsScreen extends StatelessWidget {
  static const routeName = '/teachers/requests';
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      title: 'Request',
      child: RequestItems(),
    );
  }
}
