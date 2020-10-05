import 'package:edulb/application/app_drawer/app_drawer_bloc.dart';
import 'package:edulb/widgets/drawer/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {
        Scaffold.of(context).openDrawer();
        context.bloc<AppDrawerBloc>().add(
              AppDrawerEvent.drawerOpened(),
            );
      },
    );
  }
}
