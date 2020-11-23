import 'dart:ui';
import 'package:flutter/material.dart';
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
    String newsImage = urlToImage?? 'https://6storage.s3.us-west-2.amazonaws.com/articles/undraw_healthy_options_sdo3%20%281%29.png';
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
            image:NetworkImage('https://6storage.s3.us-west-2.amazonaws.com/articles/undraw_healthy_options_sdo3%20%281%29.png'),
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title?? 'The best fitness Tips' ,
          maxLines: 2,
        ),
      ),
    );
  }
}
