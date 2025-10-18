import 'package:flutter/material.dart';

import 'package:news_app/domain/models/news_model.dart';
import 'package:news_app/resourses/app_style.dart';
import 'package:news_app/resourses/colors_manager.dart';

class NewsItemWidget extends StatelessWidget {
  const NewsItemWidget({
    super.key,
    required this.newsModel,
  });
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Image.network(newsModel.imageUrl ??
              'https://png.pngtree.com/png-vector/20190820/ourmid/pngtree-no-image-vector-illustration-isolated-png-image_1694547.jpg'),
          Text(
            newsModel.title ?? 'No Title',
            style: AppStyle.regularBold,
          ),
          Text(
            newsModel.subTitle ?? 'No SubTitle',
            style: AppStyle.regularMedian.copyWith(
              color: ColorsManager.greyColor,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
        ],
      ),
    );
  }
}
