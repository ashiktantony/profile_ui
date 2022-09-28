import 'dart:developer';

import 'package:flutter/material.dart';

ValueNotifier<bool> _passwordVisible = ValueNotifier(false);

class LabelFieldWidget extends StatelessWidget {
  final Key? textFieldKey;
  final String label;
  final String hintText;
  final bool isPasswordField;
  final TextEditingController controller;

  const LabelFieldWidget({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.isPasswordField,
    this.textFieldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label.toUpperCase(),
              style: Theme.of(context).textTheme.headline6!,
              textAlign: TextAlign.start,
            ),
          ),
          !isPasswordField
              ? TextField(
                  key: textFieldKey,
                  obscureText: isPasswordField,
                  obscuringCharacter: '*',
                  controller: controller,
                  style: Theme.of(context).textTheme.headline6!,
                  decoration: InputDecoration(
                    hintText: hintText,
                    suffixIcon: Icon(
                      Icons.person,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    hintStyle: Theme.of(context).textTheme.bodyText1!,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // borderSide: const BorderSide(color: royalBlueColor),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white10),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                  ),
                )
              : ValueListenableBuilder(
                  valueListenable: _passwordVisible,
                  builder: (context, bool value, _) {
                    return TextField(
                      key: textFieldKey,
                      obscureText: !_passwordVisible.value,
                      obscuringCharacter: '*',
                      controller: controller,
                      style: Theme.of(context).textTheme.bodyText1!,
                      onTap: () {
                        _passwordVisible.value = false;
                      },
                      decoration: InputDecoration(
                        hintText: hintText,
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Based on passwordVisible state choose the icon
                            _passwordVisible.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          onPressed: () {
                            _passwordVisible.value = !_passwordVisible.value;
                            // log("onpress ${_passwordVisible.value}");
                          },
                        ),
                        hintStyle: Theme.of(context).textTheme.bodyText1!,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          // borderSide: const BorderSide(color: royalBlueColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white10),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                      ),
                    );
                  }),
        ],
      ),
    );
  }
}
