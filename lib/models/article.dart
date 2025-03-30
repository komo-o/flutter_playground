import 'package:flutter_playground/models/user.dart';

class Article {
  Article({
    required this.title,
    required this.user,
    this.likesCount = 0,
    this.tags = const [],
    required this.createdAt,
    required this.url,
  });

  final String title;
  final User user;
  final int likesCount;
  final List<String> tags;
  final DateTime createdAt;
  final String url;

  factory Article.fromJSON(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      user: User.fromJSON(json['user']),
      url: json['url'],
      createdAt: DateTime.parse(json['created_at']),
      likesCount: json['likes_count'],
      tags: List<String>.from(json['tags'].map((tag) => tag['name'])),
    );
  }
}
