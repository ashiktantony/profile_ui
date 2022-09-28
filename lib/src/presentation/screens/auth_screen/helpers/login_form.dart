import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:profile_ui/src/presentation/screens/home_screen/home_screen.dart';
import '../../../common/utils.dart';
import 'animation_widget.dart';
import 'label_field_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  late TextEditingController? _userNameController, _passwordController;
  bool enableSignIn = false;

  @override
  void initState() {
    super.initState();
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();

    _userNameController?.addListener(() {
      setState(() {
        enableSignIn = (_userNameController?.text.isNotEmpty ?? false) &&
            (_passwordController?.text.isNotEmpty ?? false);
      });
    });
    _passwordController?.addListener(() {
      setState(() {
        enableSignIn = (_userNameController?.text.isNotEmpty ?? false) &&
            (_passwordController?.text.isNotEmpty ?? false);
      });
    });
  }

  @override
  void dispose() {
    _userNameController?.dispose();
    _passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // color: Colors.black26,

        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 24,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  "Login ",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              FadeAnimation(
                1.7,
                Column(
                  children: [
                    LabelFieldWidget(
                      label: "Username",
                      hintText: "Enter  user",
                      isPasswordField: false,
                      controller: _userNameController!,
                      textFieldKey: const ValueKey('username_text_field_key'),
                    ),
                  ],
                ),
              ),
              FadeAnimation(
                1.7,
                // child:
                LabelFieldWidget(
                  label: "Password",
                  hintText: "Enter 1234",
                  controller: _passwordController!,
                  isPasswordField: true,
                  textFieldKey: const ValueKey('password_text_field_key'),
                ),
              ),
              AbsorbPointer(
                absorbing: !enableSignIn,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      enableSignIn ? Colors.orange.shade700 : Colors.grey,
                    ),
                  ),
                  onPressed: () async {
                    if (_userNameController?.text == 'user' &&
                        _passwordController?.text == '1234') {
                      snackBarFn(
                          context: context,
                          title: "SignIn Success",
                          isAdded: true);
                      saveSession();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (_) => const HomeScreen()),
                          (route) => false);
                    } else {
                      snackBarFn(
                          context: context,
                          title: "Invalid Credentials",
                          isAdded: false);
                    }
                  },
                  child: const Text("SignIn"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  saveSession() async {
    var authAccountBox = await Hive.openBox('authAccountBox');
    await authAccountBox.put('isLoggedIn', true);
  }
}
