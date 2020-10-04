part of 'app_drawer_bloc.dart';

@freezed
abstract class AppDrawerState with _$AppDrawerState {
  const factory AppDrawerState.closeDrawer() = _CloseDrawer;
  const factory AppDrawerState.openDrawer() = _OpenDrawer;
}
