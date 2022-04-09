import 'package:e_commerce_flutter/home/data/model/categories_model.dart';
import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  CategoryIcon({Key? key, required this.categoriesData}) : super(key: key);

  final CategoriesData categoriesData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Color(0xFFFFECDF).withAlpha(220),
                    borderRadius: BorderRadius.circular(5)),
                child: Image.network('${categoriesData.image}'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              categoriesData.name.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(height: 1, fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
