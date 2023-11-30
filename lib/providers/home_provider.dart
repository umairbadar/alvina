import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import 'package:http/http.dart' as http;

import '../products/product_list.dart';

class HomeProvider with ChangeNotifier {

  late ProgressDialog pd;
  late List list;

  Future<List<dynamic>?> getData(BuildContext context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      try {

        if (context.mounted) {
          pd = ProgressDialog(context: context);
          pd.show(max: 100, msg: 'تحميل...');
        }

        final response = await http.get(Uri.parse('https://dummyjson.com/products'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            //'Authorization': _authorization,
          },
        );


        Map<String, dynamic> map = jsonDecode(response.body);

        if (response.statusCode == 200) {

          //Success...

          if (pd.isOpen()) {
            pd.close();
          }

          list = map['products'];

          notifyListeners();
          return list;

        } else {

          //Failure...

          if (pd.isOpen()) {
            pd.close();
          }

          notifyListeners();
          return null;
        }
      } catch (err) {
        rethrow;
      }
    } else {
      debugPrint('No Internet connection');
    }
    return null;
  }

  void gotoProductListing(BuildContext context, String productId) {
    Navigator.pop(context);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProductList(
            productId: productId
        ))
    );
  }
}