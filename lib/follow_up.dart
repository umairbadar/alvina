import 'package:alvina/widgets/custom_button.dart';
import 'package:alvina/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FollowUp extends StatefulWidget {
  const FollowUp({super.key});

  @override
  State<FollowUp> createState() => _FollowUpState();
}

class _FollowUpState extends State<FollowUp> {

  late TextEditingController orderNumberController;

  @override
  void initState() {
    super.initState();

    orderNumberController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    orderNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
            width: 100,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 15.0, left: 15.0),
            child: Text(
                'فضلًا أدخل رقم طلبك في الصندوق أدناه وأضغط زر لتتبعه "تتبع الطلب" لعرض حالته. بإمكانك العثور على رقم الطلب في البريد المرسل إليك والذي يحتوي على فاتورة تأكيد الطلب.'
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 25.0, bottom: 15.0),
              child: Text(
                'رقم الطلب',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
                ),
              ),
            ),
          ),
          CustomTextFormField(
              controller: orderNumberController,
              hint: 'ستجده في رسالة تأكيد طلبك.',
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
            height: 10.0,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 25.0, bottom: 15.0),
              child: Text(
                'البريد الإلكتروني للفاتورة',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                ),
              ),
            ),
          ),
          CustomTextFormField(
              controller: orderNumberController,
              hint: 'البريد الإلكتروني الذي استخدمته أثناء إتمام الطلب.',
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
            height: 10.0,
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width,
            title: 'تتبع الطلب',
            color: const Color(0xff896768),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}