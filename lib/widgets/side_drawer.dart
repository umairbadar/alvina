import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../account/tab_layout.dart';
import '../faq.dart';
import '../follow_up.dart';
import '../providers/home_provider.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xffd1beb7),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/logo.png',
                  width: 100.0,
                  height: 100.0,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      //Login, Signup...
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const TabLayout())
                      );
                    },
                    child: const Align(
                      alignment: Alignment.bottomRight,
                      child: Text('تسجيل الدخول / تسجيل جديد'),
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('حسابي'),
            onTap: () {
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('أسئلة واستفسارات'),
            onTap: () {
              //FAQ's...
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FAQ())
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('متابعة الطلب'),
            onTap: () {
              //Follow Up...
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FollowUp())
              );
            },
          ),
          const Divider(),
          Consumer<HomeProvider> (
            builder: (context, value, child) {
              return ExpansionTile(
                title: const Text('شال/إيشارب'),
                children: [
                  ListTile(
                    title: const Text("شال"),
                    onTap: () => value.gotoProductListing(context, 'شال'),
                  ),
                  ListTile(
                    title: const Text("إيشارب"),
                    onTap: () => value.gotoProductListing(context, 'إيشارب'),
                  ),
                ],
              );
            },
          ),
          const Divider(),
          Consumer<HomeProvider> (
            builder: (context, value, child) {
              return ListTile(
                title: const Text('شنطة'),
                onTap: () => value.gotoProductListing(context, 'شنطة'),
              );
            },
          ),
          const Divider(),
          Consumer<HomeProvider> (
            builder: (context, value, child) {
              return ExpansionTile(
                title: const Text('الموسم الشتوي'),
                children: [
                  ListTile(
                    title: const Text('بلوز'),
                    onTap: () => value.gotoProductListing(context, 'بلوز'),
                  ),
                  ListTile(
                    title: const Text('بنطلون'),
                    onTap: () => value.gotoProductListing(context, 'بنطلون'),
                  ),
                  ListTile(
                    title: const Text('تنورة'),
                    onTap: () => value.gotoProductListing(context, 'تنورة'),
                  ),
                  ListTile(
                    title: const Text('جلباب'),
                    onTap: () => value.gotoProductListing(context, 'جلباب'),
                  ),
                  ListTile(
                    title: const Text('فستان'),
                    onTap: () => value.gotoProductListing(context, 'فستان'),
                  ),
                  ListTile(
                    title: const Text('جاكيت'),
                    onTap: () => value.gotoProductListing(context, 'جاكيت'),
                  ),
                  ListTile(
                    title: const Text("جاكيت شتوي"),
                    onTap: () => value.gotoProductListing(context, 'جاكيت شتوي'),
                  ),
                  ListTile(
                    title: const Text('طقم'),
                    onTap: () => value.gotoProductListing(context, 'طقم'),
                  ),
                  ListTile(
                    title: const Text('فست'),
                    onTap: () => value.gotoProductListing(context, 'فست'),
                  ),
                  ListTile(
                    title: const Text('قطن'),
                    onTap: () => value.gotoProductListing(context, 'قطن'),
                  ),
                ],
              );
            },
          ),
          const Divider(),
          Consumer<HomeProvider> (
            builder: (context, value, child) {
              return ExpansionTile(
                title: const Text('الموسم الصيفي'),
                children: [
                  ListTile(
                    title: const Text('ترانشكوت'),
                    onTap: () => value.gotoProductListing(context, 'ترانشكوت'),
                  ),
                  ListTile(
                    title: const Text('بنطلون'),
                    onTap: () => value.gotoProductListing(context, 'بنطلون'),
                  ),
                  ListTile(
                    title: const Text('بلوز'),
                    onTap: () => value.gotoProductListing(context, 'بلوز'),
                  ),
                  ListTile(
                    title: const Text('تونيك'),
                    onTap: () => value.gotoProductListing(context, 'تونيك'),
                  ),
                  ListTile(
                    title: const Text('فستان سهرة'),
                    onTap: () => value.gotoProductListing(context, 'فستان سهرة'),
                  ),
                  ListTile(
                    title: const Text('فست'),
                    onTap: () => value.gotoProductListing(context, 'فست'),
                  ),
                  ListTile(
                    title: const Text('طقم'),
                    onTap: () => value.gotoProductListing(context, 'طقم'),
                  ),
                  ListTile(
                    title: const Text('فستان'),
                    onTap: () => value.gotoProductListing(context, 'فستان'),
                  ),
                  ListTile(
                    title: const Text('قطن'),
                    onTap: () => value.gotoProductListing(context, 'قطن'),
                  ),
                  ListTile(
                    title: const Text('جلباب'),
                    onTap: () => value.gotoProductListing(context, 'جلباب'),
                  ),
                  ListTile(
                    title: const Text('جاكيت'),
                    onTap: () => value.gotoProductListing(context, 'جاكيت'),
                  ),
                  ListTile(
                    title: const Text('تنورة'),
                    onTap: () => value.gotoProductListing(context, 'تنورة'),
                  ),
                ],
              );
            },
          ),
          const Divider(),
          Consumer<HomeProvider> (
            builder: (context, value, child) {
              return ExpansionTile(
                title: const Text('الموسم الجديد'),
                children: [
                  ListTile(
                    title: const Text('تونيك'),
                    onTap: () => value.gotoProductListing(context, 'تونيك'),
                  ),
                  ListTile(
                    title: const Text('بنطلون'),
                    onTap: () => value.gotoProductListing(context, 'بنطلون'),
                  ),
                  ListTile(
                    title: const Text('جاكيت'),
                    onTap: () => value.gotoProductListing(context, 'جاكيت'),
                  ),
                  ListTile(
                    title: const Text('فستان'),
                    onTap: () => value.gotoProductListing(context, 'فستان'),
                  ),
                  ListTile(
                    title: const Text('طقم'),
                    onTap: () => value.gotoProductListing(context, 'طقم'),
                  ),
                  ListTile(
                    title: const Text('جاكيت شتوي'),
                    onTap: () => value.gotoProductListing(context, 'جاكيت شتوي'),
                  ),
                  ListTile(
                    title: const Text('جلباب'),
                    onTap: () => value.gotoProductListing(context, 'جلباب'),
                  ),
                  ListTile(
                    title: const Text('ترانشكوت'),
                    onTap: () => value.gotoProductListing(context, 'ترانشكوت'),
                  ),
                  ListTile(
                    title: const Text('فست'),
                    onTap: () => value.gotoProductListing(context, 'فست'),
                  ),
                ],
              );
            },
          ),
          const Divider(),
        ],
      ),
    );
  }
}