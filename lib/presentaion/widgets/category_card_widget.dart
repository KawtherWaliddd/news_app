import 'package:flutter/material.dart';

import 'package:news_app/domain/models/category_model.dart';
import 'package:news_app/presentaion/screens/news_deteails.dart';
import 'package:news_app/resourses/app_style.dart';
import 'package:news_app/resourses/colors_manager.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    super.key,
    required this.categoryModel,
    required this.category,
  });

  final CategoryModel categoryModel;
  final String category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsDetails(category: category);
        }));
      },
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(categoryModel.imageUrl),
          ),
        ),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: AppStyle.regularBold.copyWith(
              color: ColorsManager.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
