import 'package:e_commerce_flutter/home/presentation/widget/banners.dart';
import 'package:e_commerce_flutter/home/presentation/widget/categories.dart';
import 'package:e_commerce_flutter/home/presentation/widget/discount_card.dart';
import 'package:e_commerce_flutter/home/presentation/widget/recommended_product.dart';
import 'package:e_commerce_flutter/home/presentation/widget/search_header.dart';
import 'package:e_commerce_flutter/home/presentation/widget/section_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SearchHeader(),
              SizedBox(
                height: 25,
              ),
              SectionTitle('Special for you', () {}),
              SizedBox(
                height: 15,
              ),
              Banners(),
              SizedBox(
                height: 25,
              ),
              Categories(),
              SizedBox(
                height: 25,
              ),
              SectionTitle('Recommended  Product', () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,));
              }),
              SizedBox(
                height: 15,
              ),
              RecommendedProduct(),
              SizedBox(
                height: 25,
              ),
              SectionTitle('Populor  Product', () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ,));
              }),
              SizedBox(
                height: 15,
              ),
              RecommendedProduct(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
