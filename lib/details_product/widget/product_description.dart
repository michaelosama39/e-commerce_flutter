import 'package:e_commerce_flutter/default_button.dart';
import 'package:e_commerce_flutter/details_product/widget/comments.dart';
import 'package:e_commerce_flutter/details_product/widget/create_comments.dart';
import 'package:e_commerce_flutter/details_product/widget/description_details.dart';
import 'package:e_commerce_flutter/details_product/widget/product_title.dart';
import 'package:e_commerce_flutter/home/presentation/widget/profile_icon.dart';
import 'package:e_commerce_flutter/home/presentation/widget/search_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'colors_items_details.dart';
import 'share.dart';

class ProductDescription extends StatefulWidget {
  ProductDescription({Key? key}) : super(key: key);

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductTitle(),
          const SizedBox(
            height: 5,
          ),
          Share(),
          DescriptionDetails(),
          SizedBox(
            height: 15,
          ),
          CreateComment(),
          SizedBox(
            height: 10,
          ),
          Comments(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    'Add to Cart',
                    18,
                    () {},
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF979797).withOpacity(0.1),
                        shape: BoxShape.circle),
                    child: Image.asset('assets/images/like.png' , height: 20 , width: 20, color: Colors.black,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
