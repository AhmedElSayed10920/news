import 'package:flutter/material.dart';
import 'package:news/views/widgets/articles_list_builder.dart';
import 'package:news/views/widgets/custom_category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomCategoryList(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
             NewsListBuilder(category: 'general',),
          ],
        ),
        // Column(
        //   children: [
        //     CustomCategoryList(),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     Expanded(child: CustomNewsList()),
        //   ],
        // ),
      ),
    );
  }
}
