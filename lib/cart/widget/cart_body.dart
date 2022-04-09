import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'cart_item_card.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                    child: Dismissible(
                      key: Key('1'),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFE6E6),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            SvgPicture.asset('assets/icons/Trash.svg'),
                          ],
                        ),
                      ),
                      onDismissed: (direction) {

                      },
                      child: CartItemCard(
                      ),
                    ),
                  ),
              ],
            ));
  }
}
