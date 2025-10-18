import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/domain/models/news_model.dart';
import 'package:news_app/domain/news_services/news_services.dart';
import 'package:news_app/presentaion/widgets/news_list_widget.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    future = NewsServices(dio: Dio(), category: widget.category).getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snabshot) {
        if (snabshot.hasData) {
          return NewsListWidget(
            newsData: snabshot.data!,
          );
        } else if (snabshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('Has Error'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
