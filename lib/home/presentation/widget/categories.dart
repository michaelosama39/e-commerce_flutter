import 'package:e_commerce_flutter/home/data/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'category_icon.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<CategoriesData> allCategories = [
    CategoriesData(
        id: 1,
        image:
            'https://student.valuxapps.com/storage/uploads/categories/16301438353uCFh.29118.jpg',
        name: 'اجهزه الكترونيه'),
    CategoriesData(
        id: 2,
        image:
            'https://student.valuxapps.com/storage/uploads/categories/1630142480dvQxx.3658058.jpg',
        name: 'مكافحة كورونا'),
    CategoriesData(
        id: 3,
        image:
            'https://student.valuxapps.com/storage/uploads/categories/16445270619najK.6242655.jpg',
        name: 'رياضة'),
    CategoriesData(
        id: 4,
        image:
            'https://student.valuxapps.com/storage/uploads/categories/16445230161CiW8.Light bulb-amico.png',
        name: 'ادوات الاناره'),
    CategoriesData(
        id: 5,
        image:
        'https://student.valuxapps.com/storage/uploads/categories/1630142480dvQxx.3658058.jpg',
        name: 'مكافحة كورونا'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            allCategories.length,
            (index) => CategoryIcon(
              categoriesData: allCategories[index],
            ),
          ),
        ],
      ),
    );
  }
}
