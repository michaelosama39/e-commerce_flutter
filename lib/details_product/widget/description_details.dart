import 'package:e_commerce_flutter/home/data/model/product_model.dart';
import 'package:flutter/material.dart';

class DescriptionDetails extends StatefulWidget {
  DescriptionDetails({Key? key}) : super(key: key);

  @override
  _DescriptionDetailsState createState() => _DescriptionDetailsState();
}

class _DescriptionDetailsState extends State<DescriptionDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20, right: 64),
          child: Text(
            'testtest testtest testtest testtest testtest testtest testtest testtesttesttest testtest testtest testtest testtest testtest testtest testtesttesttest testtest testtest testtest testtest testtest testtest testtest',
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      'See More Detail',
                      style: TextStyle(
                        color: Color(0xFFFF7643),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Color(0xFFFF7643),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '100\$',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
