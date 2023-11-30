import 'package:alvina/providers/product_listing_provider.dart';
import 'package:alvina/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductList extends StatefulWidget {
  const ProductList({
    super.key,
    required this.productId
  });

  final String productId;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  late Future<List<dynamic>?> future;

  @override
  void initState() {
    super.initState();

    future = Provider.of<ProductListingProvider>(context, listen: false).getProductListing(context);

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
        child: Column (
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              child: Row(
                children: [
                  Consumer<ProductListingProvider> (
                    builder: (context, value, child) {
                      return IconButton(
                        onPressed: () => value.showApplyFilterDialog(context),
                        icon: Image.asset(
                          'assets/filter.png',
                          width: 24,
                          height: 24,
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.productId,
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            FutureBuilder(
              future: future,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<dynamic>? data = snapshot.data;
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: data!.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Consumer<ProductListingProvider> (
                        builder: (context, value, child) {
                          return InkWell(
                            onTap: () => value.gotoProductDetails(context, data[index]['id']),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.network(
                                      '${data[index]['thumbnail']}',
                                      fit: BoxFit.fill,
                                      height: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 5,
                                    child: Align (
                                      alignment: Alignment.center,
                                      child: Container (
                                        decoration: const BoxDecoration(
                                            color: Color(0xff4c0d0d)
                                        ),
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          '${data[index]['title']}'.toUpperCase(),
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                      child: Text("${snapshot.error}"));
                }
                return const Text('');
              },
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}