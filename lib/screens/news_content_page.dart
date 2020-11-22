import 'package:flutter/material.dart';

import '../constants.dart';

class NewsContentPage extends StatelessWidget {
  static const String routeName = '/news-detail';
  final String title;
  final String author;
  final String content;
  NewsContentPage({this.title, this.author, this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(
            title,
            style: kLargeButtonTextStyle,
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.white,
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(author),
              Divider(color: Colors.white12),
            ],
          ),
          Text(content)
        ],
      ),
    );
  }
}
