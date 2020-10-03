// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastracture/auth/firebase_auth.dart';
import 'infrastracture/core/firebase_injectable.dart';
import 'infrastracture/requests/firebase_requests.dart';
import 'domain/auth/i_auth.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestor);
  gh.lazySingleton<FirebaseRequests>(() => FirebaseRequests());
  gh.lazySingleton<IAuth>(() =>
      FirebaseAuthentication(get<FirebaseAuth>(), get<FirebaseFirestore>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuth>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
