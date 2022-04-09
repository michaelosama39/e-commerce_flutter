import 'package:e_commerce_flutter/home/data/model/product_model.dart';
import 'package:flutter/material.dart';

Widget MainImage() {
  return SizedBox(
    width: 238,
    child: AspectRatio(
      aspectRatio: 1,
      child: Image.network(
          'https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg'),
    ),
  );
}