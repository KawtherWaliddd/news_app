class NewsModel {
  final String? imageUrl;
  final String? title;
  final String? subTitle;

  NewsModel({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });
  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      imageUrl: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
