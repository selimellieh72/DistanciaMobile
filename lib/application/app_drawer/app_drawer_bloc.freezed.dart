// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_drawer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppDrawerEventTearOff {
  const _$AppDrawerEventTearOff();

// ignore: unused_element
  _DrawerOpened drawerOpened() {
    return const _DrawerOpened();
  }

// ignore: unused_element
  _DrawerClosed drawerClosed() {
    return const _DrawerClosed();
  }
}

/// @nodoc
// ignore: unused_element
const $AppDrawerEvent = _$AppDrawerEventTearOff();

/// @nodoc
mixin _$AppDrawerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result drawerOpened(),
    @required Result drawerClosed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerOpened(),
    Result drawerClosed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result drawerOpened(_DrawerOpened value),
    @required Result drawerClosed(_DrawerClosed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerOpened(_DrawerOpened value),
    Result drawerClosed(_DrawerClosed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AppDrawerEventCopyWith<$Res> {
  factory $AppDrawerEventCopyWith(
          AppDrawerEvent value, $Res Function(AppDrawerEvent) then) =
      _$AppDrawerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppDrawerEventCopyWithImpl<$Res>
    implements $AppDrawerEventCopyWith<$Res> {
  _$AppDrawerEventCopyWithImpl(this._value, this._then);

  final AppDrawerEvent _value;
  // ignore: unused_field
  final $Res Function(AppDrawerEvent) _then;
}

/// @nodoc
abstract class _$DrawerOpenedCopyWith<$Res> {
  factory _$DrawerOpenedCopyWith(
          _DrawerOpened value, $Res Function(_DrawerOpened) then) =
      __$DrawerOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DrawerOpenedCopyWithImpl<$Res>
    extends _$AppDrawerEventCopyWithImpl<$Res>
    implements _$DrawerOpenedCopyWith<$Res> {
  __$DrawerOpenedCopyWithImpl(
      _DrawerOpened _value, $Res Function(_DrawerOpened) _then)
      : super(_value, (v) => _then(v as _DrawerOpened));

  @override
  _DrawerOpened get _value => super._value as _DrawerOpened;
}

/// @nodoc
class _$_DrawerOpened implements _DrawerOpened {
  const _$_DrawerOpened();

  @override
  String toString() {
    return 'AppDrawerEvent.drawerOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DrawerOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result drawerOpened(),
    @required Result drawerClosed(),
  }) {
    assert(drawerOpened != null);
    assert(drawerClosed != null);
    return drawerOpened();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerOpened(),
    Result drawerClosed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerOpened != null) {
      return drawerOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result drawerOpened(_DrawerOpened value),
    @required Result drawerClosed(_DrawerClosed value),
  }) {
    assert(drawerOpened != null);
    assert(drawerClosed != null);
    return drawerOpened(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerOpened(_DrawerOpened value),
    Result drawerClosed(_DrawerClosed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerOpened != null) {
      return drawerOpened(this);
    }
    return orElse();
  }
}

abstract class _DrawerOpened implements AppDrawerEvent {
  const factory _DrawerOpened() = _$_DrawerOpened;
}

/// @nodoc
abstract class _$DrawerClosedCopyWith<$Res> {
  factory _$DrawerClosedCopyWith(
          _DrawerClosed value, $Res Function(_DrawerClosed) then) =
      __$DrawerClosedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DrawerClosedCopyWithImpl<$Res>
    extends _$AppDrawerEventCopyWithImpl<$Res>
    implements _$DrawerClosedCopyWith<$Res> {
  __$DrawerClosedCopyWithImpl(
      _DrawerClosed _value, $Res Function(_DrawerClosed) _then)
      : super(_value, (v) => _then(v as _DrawerClosed));

  @override
  _DrawerClosed get _value => super._value as _DrawerClosed;
}

/// @nodoc
class _$_DrawerClosed implements _DrawerClosed {
  const _$_DrawerClosed();

  @override
  String toString() {
    return 'AppDrawerEvent.drawerClosed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DrawerClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result drawerOpened(),
    @required Result drawerClosed(),
  }) {
    assert(drawerOpened != null);
    assert(drawerClosed != null);
    return drawerClosed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result drawerOpened(),
    Result drawerClosed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerClosed != null) {
      return drawerClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result drawerOpened(_DrawerOpened value),
    @required Result drawerClosed(_DrawerClosed value),
  }) {
    assert(drawerOpened != null);
    assert(drawerClosed != null);
    return drawerClosed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result drawerOpened(_DrawerOpened value),
    Result drawerClosed(_DrawerClosed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (drawerClosed != null) {
      return drawerClosed(this);
    }
    return orElse();
  }
}

abstract class _DrawerClosed implements AppDrawerEvent {
  const factory _DrawerClosed() = _$_DrawerClosed;
}

/// @nodoc
class _$AppDrawerStateTearOff {
  const _$AppDrawerStateTearOff();

// ignore: unused_element
  _CloseDrawer closeDrawer() {
    return const _CloseDrawer();
  }

// ignore: unused_element
  _OpenDrawer openDrawer() {
    return const _OpenDrawer();
  }
}

/// @nodoc
// ignore: unused_element
const $AppDrawerState = _$AppDrawerStateTearOff();

/// @nodoc
mixin _$AppDrawerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result closeDrawer(),
    @required Result openDrawer(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result closeDrawer(),
    Result openDrawer(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result closeDrawer(_CloseDrawer value),
    @required Result openDrawer(_OpenDrawer value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result closeDrawer(_CloseDrawer value),
    Result openDrawer(_OpenDrawer value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AppDrawerStateCopyWith<$Res> {
  factory $AppDrawerStateCopyWith(
          AppDrawerState value, $Res Function(AppDrawerState) then) =
      _$AppDrawerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppDrawerStateCopyWithImpl<$Res>
    implements $AppDrawerStateCopyWith<$Res> {
  _$AppDrawerStateCopyWithImpl(this._value, this._then);

  final AppDrawerState _value;
  // ignore: unused_field
  final $Res Function(AppDrawerState) _then;
}

/// @nodoc
abstract class _$CloseDrawerCopyWith<$Res> {
  factory _$CloseDrawerCopyWith(
          _CloseDrawer value, $Res Function(_CloseDrawer) then) =
      __$CloseDrawerCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseDrawerCopyWithImpl<$Res>
    extends _$AppDrawerStateCopyWithImpl<$Res>
    implements _$CloseDrawerCopyWith<$Res> {
  __$CloseDrawerCopyWithImpl(
      _CloseDrawer _value, $Res Function(_CloseDrawer) _then)
      : super(_value, (v) => _then(v as _CloseDrawer));

  @override
  _CloseDrawer get _value => super._value as _CloseDrawer;
}

/// @nodoc
class _$_CloseDrawer implements _CloseDrawer {
  const _$_CloseDrawer();

  @override
  String toString() {
    return 'AppDrawerState.closeDrawer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CloseDrawer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result closeDrawer(),
    @required Result openDrawer(),
  }) {
    assert(closeDrawer != null);
    assert(openDrawer != null);
    return closeDrawer();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result closeDrawer(),
    Result openDrawer(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeDrawer != null) {
      return closeDrawer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result closeDrawer(_CloseDrawer value),
    @required Result openDrawer(_OpenDrawer value),
  }) {
    assert(closeDrawer != null);
    assert(openDrawer != null);
    return closeDrawer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result closeDrawer(_CloseDrawer value),
    Result openDrawer(_OpenDrawer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (closeDrawer != null) {
      return closeDrawer(this);
    }
    return orElse();
  }
}

abstract class _CloseDrawer implements AppDrawerState {
  const factory _CloseDrawer() = _$_CloseDrawer;
}

/// @nodoc
abstract class _$OpenDrawerCopyWith<$Res> {
  factory _$OpenDrawerCopyWith(
          _OpenDrawer value, $Res Function(_OpenDrawer) then) =
      __$OpenDrawerCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenDrawerCopyWithImpl<$Res> extends _$AppDrawerStateCopyWithImpl<$Res>
    implements _$OpenDrawerCopyWith<$Res> {
  __$OpenDrawerCopyWithImpl(
      _OpenDrawer _value, $Res Function(_OpenDrawer) _then)
      : super(_value, (v) => _then(v as _OpenDrawer));

  @override
  _OpenDrawer get _value => super._value as _OpenDrawer;
}

/// @nodoc
class _$_OpenDrawer implements _OpenDrawer {
  const _$_OpenDrawer();

  @override
  String toString() {
    return 'AppDrawerState.openDrawer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OpenDrawer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result closeDrawer(),
    @required Result openDrawer(),
  }) {
    assert(closeDrawer != null);
    assert(openDrawer != null);
    return openDrawer();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result closeDrawer(),
    Result openDrawer(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openDrawer != null) {
      return openDrawer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result closeDrawer(_CloseDrawer value),
    @required Result openDrawer(_OpenDrawer value),
  }) {
    assert(closeDrawer != null);
    assert(openDrawer != null);
    return openDrawer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result closeDrawer(_CloseDrawer value),
    Result openDrawer(_OpenDrawer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (openDrawer != null) {
      return openDrawer(this);
    }
    return orElse();
  }
}

abstract class _OpenDrawer implements AppDrawerState {
  const factory _OpenDrawer() = _$_OpenDrawer;
}
