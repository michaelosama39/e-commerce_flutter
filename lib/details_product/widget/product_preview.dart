import 'package:e_commerce_flutter/details_product/widget/images.dart';
import 'package:e_commerce_flutter/details_product/widget/main_image.dart';
import 'package:flutter/material.dart';

class ProductPreview extends StatefulWidget {
  const ProductPreview({Key? key}) : super(key: key);

  @override
  _ProductPreviewState createState() => _ProductPreviewState();
}

class _ProductPreviewState extends State<ProductPreview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainImage(),
        SizedBox(
          height: 8,
        ),
        // Images(),
      ],
    );
  }
}