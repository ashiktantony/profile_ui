import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:profile_ui/src/presentation/screens/auth_screen/login_screen.dart';
import 'package:profile_ui/src/presentation/screens/home_screen/home_screen.dart';

class ProfileUi extends StatelessWidget {
  final bool isLoggedIn;
  const ProfileUi({Key? key, required this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Profile Ui",
      home: isLoggedIn ? const HomeScreen() : const LoginScreen(),
    );
  }
}
// getStatus() async {
//   box1 = await Hive.openBox('authAccountBox');
//   isLoggedIn = box1?.get("isLoggedIn") ?? false;
//   // log(isLoggedIn.toString());
// }
