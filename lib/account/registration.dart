import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alvina/home.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  late TextEditingController emailController;
  late TextEditingController passwordController;

  bool rememberMe = false;

  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 22.0, bottom: 15.0),
              child: Text(
                'البريد الإلكتروني *',
              ),
            ),
          ),
          CustomTextFormField(
              controller: emailController,
              hint: '',
              obscureText: false,
              icon: const Icon(null),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              textInputFormatters: const [],
              maxLength: 25,
              onSaved: (value) {

              },
              validator: (value) {

              }
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 22.0, bottom: 15.0),
              child: Text(
                'كلمة المرور *',
              ),
            ),
          ),
          CustomTextFormField(
              controller: passwordController,
              hint: '',
              obscureText: false,
              icon: const Icon(null),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              textInputFormatters: const [],
              maxLength: 25,
              onSaved: (value) {

              },
              validator: (value) {

              }
          ),
          const SizedBox(
            height: 20.0,
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width,
            title: 'تسجيل جديد',
            color: const Color(0xff896768),
            onPressed: () {
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {

                },
                icon: Image.asset(
                  'assets/facebook_colorful_icon.png',
                  width: 30,
                  height: 30,
                ),
              ),
              IconButton(
                onPressed: () {

                },
                icon: Image.asset(
                  'assets/google_icon.png',
                  width: 30,
                  height: 30,
                ),
              ),
              IconButton(
                  onPressed: () {

                  },
                  icon: Image.asset(
                    'assets/apple_icon.png',
                    width: 30,
                    height: 30,
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}