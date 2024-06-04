import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/screens/category_page.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CategoryView(
                  category: categoryModel.categoryName,
                )));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 95,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(categoryModel.image), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              categoryModel.categoryName,
              style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
