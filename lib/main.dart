import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'src/profile_ui.dart';

late Box? box1;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  box1 = await Hive.openBox('authAccountBox');
  runApp(ProfileUi(
    isLoggedIn: box1?.get("isLoggedIn") ?? false,
  ));
}
