import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alvina/home.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {

  @override
  void initState() {
    super.initState();
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'أسئلة شائعة',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            //Delivery Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/delivery_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'التوصيل',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'مدة التوصيل',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'تكلفة التوصيل',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'منطقتي غير موجوده عند اتمام الطلب',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'هل يوجد مساعدة؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'هل يمكنني فتح الطرد قبل الاستلام؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'كيف يمكنني التأكد من المقاس؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            //Delivery Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Request Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/request_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'الطلب',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'كيفية الشراء/الطلب؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'طرق الدفع',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'هل سيتم حجز المنتجات التي أضيفها إلى سلة المشتريات لي؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'لم يتم تسليم طلبي بعد. اريد تغيير المنتج كيف افعل؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            //Request Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Points Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/points_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'النقاط',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'كيفية الحصول على النقاط؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'متى يمكنني استخدام النقاط؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'كيف يمكن أن أعرف عدد النقاط الموجودة لدي؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'كيف يمكنني خصم النقاط الموجودة لدي؟',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            //Points Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Return Exchange Section Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/return_exchange_icon.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'سياسة الارجاع والتبديل',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'سياسة التبديل',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'سياسة الارجاع',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            //Return Exchange Section Ended...
            const SizedBox(
              height: 15.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Divider(
                color: Colors.black,
                height: 20,
                thickness: 0.5,
                indent: 0,
                endIndent: 0,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            //Privacy Policy Started...
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/privacy_policy.png',
                  width: 50.0,
                  height: 50.0,
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'سياسة الخصوصية والأستخدام',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'سياسة الخصوصية',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                        Icons.keyboard_arrow_down
                    )
                ),
                const Expanded(
                  child: Text(
                    'سياسة الأستخدام',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
            //Privacy Policy Ended...
          ],
        ),
      ),
    );
  }
}