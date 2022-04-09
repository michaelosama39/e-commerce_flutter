import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  CartItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('assets/images/glap.png'),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 150,
              child: Text(
                'Product test 1' , maxLines: 2,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            Text.rich(
              TextSpan(
                text: '\$${300}',
                style: TextStyle(color: Color(0xFFFF7643)),
                children: [
                  TextSpan(
                    text: ' x${1}',
                    style: TextStyle(color: Color(0xFF757575)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
