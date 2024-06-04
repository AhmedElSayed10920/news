import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/views/widgets/custom_category.dart';

class CustomCategoryList extends StatelessWidget {
  CustomCategoryList({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
        image: 'assets/images/business.jpeg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/images/entertaiment.jpeg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/images/health.jpeg', categoryName: 'Health'),
    CategoryModel(image: 'assets/images/science.jpeg', categoryName: 'Science'),
    CategoryModel(image: 'assets/images/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(
        image: 'assets/images/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/images/general.jpeg', categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CustomCategory(
          categoryModel: categories[index],
        ),
      ),
    );
  }
}
