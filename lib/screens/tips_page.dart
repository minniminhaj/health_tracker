import 'package:flutter/material.dart';
import 'package:health_tracker/components/news_item.dart';
import 'package:health_tracker/screens/news_content_page.dart';
import 'package:health_tracker/services/news_services.dart';
import 'package:newsapi/newsapi.dart';

class TipsPage extends StatefulWidget {
  @override
  _TipsPageState createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage> {
  List<Article> newsList = [];
  static const String routeName = '/news';

  void getNewsArticles() async {
    NewsServices newsResult = NewsServices(newsType: 'fitness tips');
    await newsResult.getNews();
    newsList = newsResult.newsList;
  }

  @override
  void initState() {
    getNewsArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Health Feeds',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsContentPage(
                    title: newsList[index].title,
                    content: newsList[index].content,
                    author: newsList[index].author,
                  ),
                ),
              );
            },
            child: NewsItem(
              urlToImage: newsList[index].urlToImage,
              title: newsList[index].title,
            ),
          );
        },
        itemCount: newsList.length,
      ),
    );
  }
}
