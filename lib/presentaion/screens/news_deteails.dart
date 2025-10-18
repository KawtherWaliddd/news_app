import 'package:flutter/material.dart';

import 'package:news_app/presentaion/widgets/appBar.dart';
import 'package:news_app/presentaion/widgets/news_list_view_builder.dart';

class NewsDetails extends StatelessWidget {
  final String category;

  const NewsDetails({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: CustomScrollView(
        slivers: [
          NewsListBuilder(category: category),
        ],
      ),
    );
  }
}
