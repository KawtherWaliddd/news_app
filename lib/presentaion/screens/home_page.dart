import 'package:flutter/material.dart';
import 'package:news_app/presentaion/widgets/appBar.dart';
import 'package:news_app/presentaion/widgets/category_list_widget.dart';
import 'package:news_app/presentaion/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          slivers: [
            CategoryListWidget(),
            const NewsListBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
