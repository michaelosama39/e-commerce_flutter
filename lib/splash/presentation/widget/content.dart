import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  const Content({Key? key, this.text, this.image})
      : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
              fontSize: 36,
              color: Color(0xFFFF7643),
              fontWeight: FontWeight.bold),
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          width: 235,
          height: 265,
        ),
      ],
    );
  }
}