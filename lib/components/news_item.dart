import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:health_tracker/screens/news_content_page.dart';
import '../constants.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String urlToImage;
  final String url;

  NewsItem({
    this.title,
    this.url,
    this.urlToImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6.0),
      decoration: BoxDecoration(
        color: kActiveCardColour,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ListTile(
        leading: Container(
          height: 80,
          width: 80,
          child: Image(
            image: NetworkImage(urlToImage),
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          maxLines: 2,
        ),
      ),
    );
  }
}
