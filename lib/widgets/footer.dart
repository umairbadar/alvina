import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alvina/home.dart';
import 'package:flutter_svg/svg.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[100],
          ),
          child: const Column (
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'رقم هاتف: 2364343-02',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'في ساعات الدوام 10:00-22:00 ما عدا يوم الجمعة',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                'بريد الكتروني: support@alvinaramallah.com',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'ALVINA',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
                'assets/cod_icon.svg',
                semanticsLabel: 'Cash on Delivery'
            ),
            SvgPicture.asset(
                'assets/mastercard_icon.svg',
                semanticsLabel: 'Mastercard'
            ),
            SvgPicture.asset(
                'assets/paypal_icon.svg',
                semanticsLabel: 'Paypal'
            ),
            SvgPicture.asset(
                'assets/verified_by_visa_icon.svg',
                semanticsLabel: 'Verified by VISA'
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}