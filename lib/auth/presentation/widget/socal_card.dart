import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget SocalCard(String icon , void press()){
  return GestureDetector(
    onTap: (){
      press();
    },
    child: Container(
      padding: EdgeInsets.all(12),
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Color(0xFFF5F6F9),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(icon),
    ),
  );
}