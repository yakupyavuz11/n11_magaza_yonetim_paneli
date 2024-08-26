import 'package:flutter/material.dart';

class ProductScreens extends StatefulWidget {
  const ProductScreens({super.key});

  @override
  State<ProductScreens> createState() => _ProductScreensState();
}

class _ProductScreensState extends State<ProductScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("hello"),
      ),
    );
  }
}
