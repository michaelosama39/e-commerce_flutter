import 'package:e_commerce_flutter/details_product/widget/details_appbar.dart';
import 'package:e_commerce_flutter/details_product/widget/details_body.dart';
import 'package:flutter/material.dart';

class DetailsProductScreen extends StatefulWidget {
  const DetailsProductScreen({Key? key}) : super(key: key);

  @override
  _DetailsProductScreenState createState() => _DetailsProductScreenState();
}

class _DetailsProductScreenState extends State<DetailsProductScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: DetailsAppbar(),
      body: DetailsBody(),
    );
  }
}
