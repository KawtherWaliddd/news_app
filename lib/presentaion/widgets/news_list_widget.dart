import 'package:flutter/material.dart';

import 'package:news_app/domain/models/news_model.dart';
import 'package:news_app/presentaion/widgets/news_item_widget.dart';

class NewsListWidget extends StatelessWidget {
  const NewsListWidget({
    super.key,
    required this.newsData,
  });
  final List<NewsModel> newsData;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: (SliverChildBuilderDelegate(
        childCount: newsData.length,
        (context, index) {
          return NewsItemWidget(
            newsModel: newsData[index],
          );
        },
      )),
    );
  }
}
