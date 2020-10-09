// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'application/grades/edit_grades/edit_grades_bloc.dart';
import 'infrastracture/auth/firebase_auth.dart';
import 'infrastracture/grades/firebase_grades.dart';
import 'infrastracture/homeworks/firebase_homework_repository.dart';
import 'infrastracture/core/firebase_injectable.dart';
import 'infrastracture/requests/firebase_requests.dart';
import 'application/grades/grades_bloc.dart';
import 'domain/auth/i_auth_repository.dart';
import 'domain/grades/i_grades_repository.dart';
import 'domain/homeworks/i_homework_repository.dart';
import 'domain/requests/I_requests.dart';
import 'application/homeworks/submit_homework/submit_homework_bloc.dart';
import 'application/homeworks/watch_homeworks_bloc.dart';

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
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<IAuth>(() =>
      FirebaseAuthentication(get<FirebaseAuth>(), get<FirebaseFirestore>()));
  gh.lazySingleton<IGradesRepository>(
      () => FirebaseGradesRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IHomeworksRepository>(() => FirebaseHomeworkRepository(
      get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IRequestsRepository>(
      () => FirebaseRequests(get<FirebaseFirestore>()));
  gh.factory<SubmitHomeworkBloc>(
      () => SubmitHomeworkBloc(get<IHomeworksRepository>()));
  gh.factory<WatchHomeworksBloc>(
      () => WatchHomeworksBloc(get<IHomeworksRepository>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuth>()));
  gh.factory<EditGradesBloc>(() => EditGradesBloc(get<IGradesRepository>()));
  gh.factory<GradesBloc>(() => GradesBloc(get<IGradesRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
