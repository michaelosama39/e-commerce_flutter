import 'package:e_commerce_flutter/home/data/model/banner_model.dart';
import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  BannerCard({Key? key, required this.bannerData}) : super(key: key);

  final BannerData bannerData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 170,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
                  Image.network(
                    '${bannerData.image}',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color(0xFF343434).withOpacity(0.4),
                          Color(0xFF343434).withOpacity(0.15),
                        ])),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
