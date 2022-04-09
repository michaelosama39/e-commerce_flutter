import 'package:e_commerce_flutter/cart/screen/cart_screen.dart';
import 'package:e_commerce_flutter/home/presentation/widget/profile_icon.dart';
import 'package:e_commerce_flutter/home/presentation/widget/search_icon.dart';
import 'package:e_commerce_flutter/profile/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 225,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF979797).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextField(
                          onChanged: (value) {

                          },
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: 'Search Prodect',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {
                                // Navigator.of(context).pushNamed(searchScreen , arguments: text);
                              },
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Row(
                        children: [
                          CartIcon(
                            svgSrc: 'assets/icons/Cart Icon.svg',
                            numOfItems: 3,
                            press: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CartScreen(),));
                            },
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          ProfileIcon(
                            svgSrc: 'assets/icons/User.svg',
                            press: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen(),));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
