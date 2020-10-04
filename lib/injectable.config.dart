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
import 'infrastracture/grades/firebase_grades.dart';
import 'infrastracture/core/firebase_injectable.dart';
import 'infrastracture/requests/firebase_requests.dart';
import 'application/grades/grades_bloc.dart';
import 'domain/auth/i_auth.dart';
import 'domain/grades/i_grades.dart';
import 'domain/requests/I_requests.dart';

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
  gh.lazySingleton<FirebaseFirestore>(
      () => firebaseInjectableModule.firebaseFirestore);
  gh.lazySingleton<IAuth>(() =>
      FirebaseAuthentication(get<FirebaseAuth>(), get<FirebaseFirestore>()));
  gh.lazySingleton<IGradesRepository>(
      () => FirebaseGradesRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IRequestsRepository>(
      () => FirebaseRequests(get<FirebaseFirestore>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuth>()));
  gh.factory<GradesBloc>(() => GradesBloc(get<IGradesRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
