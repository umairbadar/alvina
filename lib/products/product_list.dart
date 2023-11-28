import 'package:flutter/material.dart';

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
      body: Center(
        child: Text(
          '${widget.productId}'
        ),
      ),
    );
  }
}