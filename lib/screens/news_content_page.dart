import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsContentPage extends StatelessWidget {
  static const String routeName = '/news-detail';
  final String title;
  final String url;
  NewsContentPage({this.title, this.url});

  @override
  Widget build(BuildContext context) {
    print(url);
    return Scaffold(
      appBar: AppBar(title: Text(title ?? 'Best Fitness '),),
      body: WebView(
         initialUrl: url,
         javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
