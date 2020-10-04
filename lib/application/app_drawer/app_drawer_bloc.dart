import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_drawer_event.dart';
part 'app_drawer_state.dart';
part 'app_drawer_bloc.freezed.dart';

class AppDrawerBloc extends Bloc<AppDrawerEvent, AppDrawerState> {
  AppDrawerBloc() : super(const AppDrawerState.closeDrawer());

  @override
  Stream<AppDrawerState> mapEventToState(
    AppDrawerEvent event,
  ) async* {
    yield* event.map(
      drawerOpened: (_) async* {
        yield AppDrawerState.openDrawer();
      },
      drawerClosed: (_) async* {
        yield AppDrawerState.closeDrawer();
      },
    );
  }
}
