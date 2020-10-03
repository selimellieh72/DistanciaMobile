import 'package:edulb/injectable.dart';
import 'package:edulb/widgets/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

void main() async {
  configureDependencies(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
