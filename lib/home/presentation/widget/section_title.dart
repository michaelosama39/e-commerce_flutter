import 'package:flutter/material.dart';

Widget SectionTitle(String text , Function() press) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        InkWell(
          onTap: press,
          child: Text('See More'),
        ),
      ],
    ),
  );
}
