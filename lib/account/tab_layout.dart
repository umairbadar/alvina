import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alvina/account/login.dart';
import 'package:alvina/account/registration.dart';

class TabLayout extends StatefulWidget {
  const TabLayout({super.key});

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
                width: 100,
              ),
            ),
            bottom: const TabBar(
              indicatorColor:  Color(0xff896768),
              labelColor: Color(0xff896768),
              tabs: [
                Tab(
                  icon: Icon(Icons.person),
                  text:'تسجيل الدخول',
                ),
                Tab(
                  icon: Icon(Icons.person_add),
                  text: 'تسجيل جديد',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Login(),
              Registration()
            ],
          ),
        )
    );
  }
}