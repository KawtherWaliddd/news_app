import 'package:dio/dio.dart';

import 'package:news_app/domain/models/news_model.dart';
import 'package:news_app/domain/news_services/end_point.dart';

class NewsServices {
  final Dio dio;
  final String category;
  NewsServices({
    required this.dio,
    required this.category,
  });

  Future<List<NewsModel>> getNews() async {
    String baseUrl = 'https://newsapi.org/v2/';
    String apiKey = 'e966ef7969de4b089eb06dea9ac0def1';
    try {
      Response response = await dio.get(
        '$baseUrl-${EndPoint.endPoint}?apiKey=$apiKey&categor=$category',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> articleList = [];
      for (var article in articles) {
        articleList.add(NewsModel.fromJson(article));
      }

// this line =======
// List<NewsModel> articleList = articles.map((article) => NewsModel.fromJson(article)).toList();

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
