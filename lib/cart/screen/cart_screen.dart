import 'package:e_commerce_flutter/cart/widget/cart_appbar.dart';
import 'package:e_commerce_flutter/cart/widget/cart_body.dart';
import 'package:e_commerce_flutter/cart/widget/check_out_card.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        title: CartAppbar(),
      ),
      body: CartBody(),
      bottomNavigationBar: CheckOutCard(),
    );
  }
}
