import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfileIcon extends StatelessWidget {
  ProfileIcon({Key? key , required this.svgSrc , required this.press}) : super(key: key);

  String svgSrc ;
  Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press();
      },
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: EdgeInsets.all(12),
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            color: Color(0xFF979797).withOpacity(0.1),
            shape: BoxShape.circle),
        child: SvgPicture.asset(svgSrc),
      ),
    );
  }
}