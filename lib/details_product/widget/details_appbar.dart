import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar DetailsAppbar(){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4.5',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                SvgPicture.asset('assets/icons/Star Icon.svg')
              ],
            ),
          ),
        ),
      )
    ],
  );
}