import 'package:flutter/material.dart';

import 'package:news_app/domain/models/category_model.dart';
import 'package:news_app/presentaion/widgets/category_card_widget.dart';
import 'package:news_app/resourses/app_images.dart';

class CategoryListWidget extends StatelessWidget {
  CategoryListWidget({super.key});

  final List<CategoryModel> categoryList = [
    CategoryModel(imageUrl: Assets.imagesBusiness, categoryName: 'Business'),
    CategoryModel(
        imageUrl: Assets.imagesEntertaiment, categoryName: 'Entertainment'),
    CategoryModel(imageUrl: Assets.imagesGeneral, categoryName: 'General'),
    CategoryModel(imageUrl: Assets.imagesHealth, categoryName: 'Health'),
    CategoryModel(imageUrl: Assets.imagesScience, categoryName: 'Science'),
    CategoryModel(imageUrl: Assets.imagesSports, categoryName: 'Sports'),
    CategoryModel(
        imageUrl: Assets.imagesTechnology, categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.separated(
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCardWidget(
              categoryModel: categoryList[index],
              category: categoryList[index].categoryName.toLowerCase(),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 10);
          },
        ),
      ),
    );
  }
}
