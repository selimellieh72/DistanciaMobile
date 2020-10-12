import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:injectable/injectable.dart';

import 'package:edulb/injectable.dart';
import 'package:edulb/presentation/core/app_widget.dart';

void main() async {
  configureDependencies(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
