import 'package:e_commerce_flutter/details_product/screen/details_product_screen.dart';
import 'package:e_commerce_flutter/home/data/model/product_model.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductData productData;

  ProductCard({Key? key, required this.productData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 150,
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DetailsProductScreen(),));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFF979797).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(productData.image),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                productData.name,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${productData.price}\$",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7643),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF7643).withOpacity(0.15),
                            shape: BoxShape.circle,
                          ),
                          child: FavoriteButton(
                            isFavorite: false,
                            iconSize: 25,
                            valueChanged: (_value) {

                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      InkWell(
                        onTap: () {

                        },
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF7643).withOpacity(0.15),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}