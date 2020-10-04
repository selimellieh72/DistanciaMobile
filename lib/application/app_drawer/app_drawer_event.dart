part of 'app_drawer_bloc.dart';

@freezed
abstract class AppDrawerEvent with _$AppDrawerEvent {
  const factory AppDrawerEvent.drawerOpened() = _DrawerOpened;
  const factory AppDrawerEvent.drawerClosed() = _DrawerClosed;
}
