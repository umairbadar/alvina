import 'package:alvina/widgets/footer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alvina/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';

import '../widgets/custom_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  late TextEditingController userNameController;
  late TextEditingController passwordController;

  bool rememberMe = false;

  @override
  void initState() {
    super.initState();

    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    userNameController.dispose();
    passwordController.dispose();
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

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
                'اسم المستخدم أو البريد الإلكتروني *',
              ),
            ),
          ),
          CustomTextFormField(
              controller: userNameController,
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
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    }
                ),
                Text('تذكرني'),
              ],
            ),
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width,
            title: 'تسجيل الدخول',
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
          ),
          const Footer()
        ],
      ),
    );
  }
}