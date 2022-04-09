import 'package:flutter/material.dart';

Widget ProductTitle(){
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: Text(
      'product test 1',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}