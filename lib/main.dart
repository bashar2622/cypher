import 'package:cipher/core/services/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:cipher/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependency();
  runApp(MyApp());
}
