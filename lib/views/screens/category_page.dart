import 'package:flutter/material.dart';
import 'package:news/views/widgets/articles_list_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(
          slivers: [NewsListBuilder(category: category,)],
        ),
      ),
    );
  }
}
