import 'package:e_commerce_flutter/home/data/model/product_model.dart';
import 'package:e_commerce_flutter/home/presentation/widget/product_card.dart';
import 'package:flutter/material.dart';

class RecommendedProduct extends StatefulWidget {
  const RecommendedProduct({Key? key}) : super(key: key);

  @override
  _RecommendedProductState createState() => _RecommendedProductState();
}

class _RecommendedProductState extends State<RecommendedProduct> {
  List<ProductData> allProducts = [
    ProductData(
        id: 1,
        discount: 0,
        image:
            "https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg",
        name: "ابل ايفون 12 برو ماكس - 256جيجابيت, ازرق",
        description:
            'الحجم: ٦.٧ بوصة\r\nالدقة: 2778 × 1284 بكسل ، 458 نقطة في البوصة\r\nالتكنولوجيا: OLED\r\nالشاشة للجسم: 87.45٪\r\nسطوع الذروة: 1200 شمعة / م 2 (نيت)\r\nالميزات: دعم فيديو HDR ، طلاء مقاوم للزيوت ، زجاج مقاوم للخدش (درع سيراميك) ، مستشعر الإضاءة المحيطة ، مستشعر القرب\r\nالمعدات\r\nشريحة النظام: Apple A14 Bionic\r\nالمعالج: Hexa-core، 64-bit، 5 nm\r\nوحدة معالجة الرسومات: نعم\r\nذاكرة الوصول العشوائي: 6 جيجابايت LPDDR5',
        price: 2500),
    ProductData(
        id: 1,
        discount: 0,
        image:
            "https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg",
        name: "ابل ايفون 12 برو ماكس - 256جيجابيت, ازرق",
        description:
            'الحجم: ٦.٧ بوصة\r\nالدقة: 2778 × 1284 بكسل ، 458 نقطة في البوصة\r\nالتكنولوجيا: OLED\r\nالشاشة للجسم: 87.45٪\r\nسطوع الذروة: 1200 شمعة / م 2 (نيت)\r\nالميزات: دعم فيديو HDR ، طلاء مقاوم للزيوت ، زجاج مقاوم للخدش (درع سيراميك) ، مستشعر الإضاءة المحيطة ، مستشعر القرب\r\nالمعدات\r\nشريحة النظام: Apple A14 Bionic\r\nالمعالج: Hexa-core، 64-bit، 5 nm\r\nوحدة معالجة الرسومات: نعم\r\nذاكرة الوصول العشوائي: 6 جيجابايت LPDDR5',
        price: 2500),
    ProductData(
        id: 1,
        discount: 0,
        image:
            "https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg",
        name: "ابل ايفون 12 برو ماكس - 256جيجابيت, ازرق",
        description:
            'الحجم: ٦.٧ بوصة\r\nالدقة: 2778 × 1284 بكسل ، 458 نقطة في البوصة\r\nالتكنولوجيا: OLED\r\nالشاشة للجسم: 87.45٪\r\nسطوع الذروة: 1200 شمعة / م 2 (نيت)\r\nالميزات: دعم فيديو HDR ، طلاء مقاوم للزيوت ، زجاج مقاوم للخدش (درع سيراميك) ، مستشعر الإضاءة المحيطة ، مستشعر القرب\r\nالمعدات\r\nشريحة النظام: Apple A14 Bionic\r\nالمعالج: Hexa-core، 64-bit، 5 nm\r\nوحدة معالجة الرسومات: نعم\r\nذاكرة الوصول العشوائي: 6 جيجابايت LPDDR5',
        price: 2500),
    ProductData(
        id: 1,
        discount: 0,
        image:
            "https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg",
        name: "ابل ايفون 12 برو ماكس - 256جيجابيت, ازرق",
        description:
            'الحجم: ٦.٧ بوصة\r\nالدقة: 2778 × 1284 بكسل ، 458 نقطة في البوصة\r\nالتكنولوجيا: OLED\r\nالشاشة للجسم: 87.45٪\r\nسطوع الذروة: 1200 شمعة / م 2 (نيت)\r\nالميزات: دعم فيديو HDR ، طلاء مقاوم للزيوت ، زجاج مقاوم للخدش (درع سيراميك) ، مستشعر الإضاءة المحيطة ، مستشعر القرب\r\nالمعدات\r\nشريحة النظام: Apple A14 Bionic\r\nالمعالج: Hexa-core، 64-bit، 5 nm\r\nوحدة معالجة الرسومات: نعم\r\nذاكرة الوصول العشوائي: 6 جيجابايت LPDDR5',
        price: 2500),
    ProductData(
        id: 1,
        discount: 0,
        image:
            "https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg",
        name: "ابل ايفون 12 برو ماكس - 256جيجابيت, ازرق",
        description:
            'الحجم: ٦.٧ بوصة\r\nالدقة: 2778 × 1284 بكسل ، 458 نقطة في البوصة\r\nالتكنولوجيا: OLED\r\nالشاشة للجسم: 87.45٪\r\nسطوع الذروة: 1200 شمعة / م 2 (نيت)\r\nالميزات: دعم فيديو HDR ، طلاء مقاوم للزيوت ، زجاج مقاوم للخدش (درع سيراميك) ، مستشعر الإضاءة المحيطة ، مستشعر القرب\r\nالمعدات\r\nشريحة النظام: Apple A14 Bionic\r\nالمعالج: Hexa-core، 64-bit، 5 nm\r\nوحدة معالجة الرسومات: نعم\r\nذاكرة الوصول العشوائي: 6 جيجابايت LPDDR5',
        price: 2500),
    ProductData(
        id: 1,
        discount: 0,
        image:
            "https://student.valuxapps.com/storage/uploads/products/1615440322npwmU.71DVgBTdyLL._SL1500_.jpg",
        name: "ابل ايفون 12 برو ماكس - 256جيجابيت, ازرق",
        description:
            'الحجم: ٦.٧ بوصة\r\nالدقة: 2778 × 1284 بكسل ، 458 نقطة في البوصة\r\nالتكنولوجيا: OLED\r\nالشاشة للجسم: 87.45٪\r\nسطوع الذروة: 1200 شمعة / م 2 (نيت)\r\nالميزات: دعم فيديو HDR ، طلاء مقاوم للزيوت ، زجاج مقاوم للخدش (درع سيراميك) ، مستشعر الإضاءة المحيطة ، مستشعر القرب\r\nالمعدات\r\nشريحة النظام: Apple A14 Bionic\r\nالمعالج: Hexa-core، 64-bit، 5 nm\r\nوحدة معالجة الرسومات: نعم\r\nذاكرة الوصول العشوائي: 6 جيجابايت LPDDR5',

        price: 2500),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            allProducts.length,
            (index) => ProductCard(
              productData: allProducts[index],
            ),
          ),
        ],
      ),
    );
  }
}
