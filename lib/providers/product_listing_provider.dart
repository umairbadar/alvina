import 'dart:convert';

import 'package:alvina/products/product_details.dart';
import 'package:alvina/widgets/custom_button.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';
import 'package:http/http.dart' as http;

class ProductListingProvider with ChangeNotifier{

  late ProgressDialog pd;
  late List list;

  Future<List<dynamic>?> getProductListing(BuildContext context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      try {

        if (context.mounted) {
          pd = ProgressDialog(context: context);
          pd.show(max: 100, msg: 'تحميل...');
        }

        final response = await http.get(Uri.parse(dotenv.get('product_list_api')),
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

  Future<Map<String, dynamic>?> getProductDetails(BuildContext context, int productId) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      try {

        if (context.mounted) {
          pd = ProgressDialog(context: context);
          pd.show(max: 100, msg: 'تحميل...');
        }

        final response = await http.get(Uri.parse('${dotenv.get('product_list_api')}/$productId'),
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

          notifyListeners();
          return map;

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

  void showApplyFilterDialog(BuildContext context) {
    showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext,
            Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 10,
              height: MediaQuery.of(context).size.height -  80,
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: Column(
                children: [
                  CustomButton(
                      title: 'Apply Filter',
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      width: 200.0,
                      color: Colors.blue
                  )
                ],
              ),
            ),
          );
        });
  }

  void gotoProductDetails(BuildContext context, int productId) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProductDetails(
            productId: productId
        ))
    );
  }

  void displayImage(BuildContext context, String image){
    ImageProvider imageProvider = Image.network(image).image;
    showImageViewer(context, imageProvider);
  }
}