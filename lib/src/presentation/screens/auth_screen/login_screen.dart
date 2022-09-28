import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'helpers/animation_widget.dart';
import 'helpers/login_form.dart';
// import 'package:babylonjs_viewer/babylonjs_viewer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Container(
        color: Colors.amber.shade50,
        // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: const FadeAnimation(
          1,
          Center(
            child: SizedBox(
              child: LoginForm(
                key: ValueKey('login_form_key'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
