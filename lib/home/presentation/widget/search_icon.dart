import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CartIcon extends StatelessWidget {
  CartIcon({Key? key , required this.svgSrc , required this.numOfItems , required this.press}) : super(key: key);

  String svgSrc ;
  int numOfItems;
  Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        press();
      },
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                color: Color(0xFF979797).withOpacity(0.1),
                shape: BoxShape.circle),
            child: SvgPicture.asset(svgSrc),
          ),
          // if(numOfItems !=0)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '${numOfItems}',
                    style: TextStyle(
                        fontSize: 10,
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}