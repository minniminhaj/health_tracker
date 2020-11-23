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

  Future<List<Article>> getNewsArticles() async {
    NewsServices newsResult = NewsServices(newsType: 'Fitness Diet Plans');
    await newsResult.getNews();
    newsList = newsResult.newsList;
    return newsList;
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
      body: FutureBuilder(
        future: getNewsArticles(),
        builder: (context, AsyncSnapshot<List<Article>> snapshot){
          return  ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsContentPage(
                      title: newsList[index].title,
                      url: newsList[index].url,
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
        );
      
        },
       ),
    );
  }
}
