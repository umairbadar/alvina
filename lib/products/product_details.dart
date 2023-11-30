import 'package:alvina/widgets/custom_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_listing_provider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    super.key,
    required this.productId
  });

  final int productId;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  late Future<Map<String, dynamic>?> futureMap;

  @override
  void initState() {
    super.initState();

    futureMap = Provider.of<ProductListingProvider>(context, listen: false).getProductDetails(context, widget.productId);
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
      body: FutureBuilder(
        future: futureMap,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic>? data = snapshot.data;
            List<dynamic> imageList = data?['images'];
            return SingleChildScrollView(
              child: Column(
                children: [
                  Consumer<ProductListingProvider> (
                    builder: (context, value, child) {
                      return CarouselSlider(
                        items: imageList.map((image) =>
                            InkWell(
                              onTap: () => value.displayImage(context, image),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Image.network(
                                  image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                        ).toList(),
                        options: CarouselOptions(
                          autoPlay: false,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          height: 250.0,
                          viewportFraction: 1,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '${data?['title']}'.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '${data?['description']}',
                    style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '${data?['price']}  شيكل',
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomButton(
                      title: 'إضافة إلى السلة',
                      onPressed: () {

                      },
                      width: 200.0,
                      color: const Color(0xff896768),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'احصلي على نقاط عند شرائك هذه القطعة 🎉',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: const Text(
                      'جدول المقاسات',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
                child: Text("${snapshot.error}"));
          }
          return const Text('');
        },
      ),
    );
  }
}