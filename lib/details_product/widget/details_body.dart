import 'package:e_commerce_flutter/details_product/widget/product_description.dart';
import 'package:e_commerce_flutter/details_product/widget/product_preview.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatefulWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: [
          ProductPreview(),
          ProductDescription(),
        ],
      ),
    );
  }
}
