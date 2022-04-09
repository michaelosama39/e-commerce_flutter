import 'package:e_commerce_flutter/home/data/model/banner_model.dart';
import 'package:e_commerce_flutter/home/presentation/widget/banner_card.dart';
import 'package:flutter/material.dart';

class Banners extends StatefulWidget {
  const Banners({Key? key}) : super(key: key);

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  List<BannerData> allBanners = [
    BannerData(
        id: 1,
        image:
            "https://student.valuxapps.com/storage/uploads/banners/1619472351ITAM5.3bb51c97376281.5ec3ca8c1e8c5.jpg",
        category: null,
        product: null),
    BannerData(
        id: 2,
        image:
        "https://student.valuxapps.com/storage/uploads/banners/1619472116OYHxC.45b7de97376281.5ec3ca8c1d324.jpg",
        category: null,
        product: null),
    BannerData(
        id: 3,
        image:
        "https://student.valuxapps.com/storage/uploads/banners/1626544896muQ0Q.best-deal-promotional-ribbon-style-green-banner-design_1017-27469.jpg",
        category: null,
        product: null),
    BannerData(
        id: 4,
        image:
        "https://student.valuxapps.com/storage/uploads/banners/1626545208UfigP.golden-coin-money-cashback-promotion-ecommerce-poster-banner-template-blue-background-216757528.jpg",
        category: null,
        product: null),
    BannerData(
        id: 5,
        image:
        "https://student.valuxapps.com/storage/uploads/banners/16283378549Vinn.banner foods@2x.png",
        category: null,
        product: null),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            allBanners.length,
            (index) => BannerCard(bannerData: allBanners[index]),
          )
        ],
      ),
    );
  }
}
