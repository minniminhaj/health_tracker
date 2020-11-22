import 'package:newsapi/newsapi.dart';

class NewsServices {
  final String newsType;
  List<Article> newsList;
  NewsServices({this.newsType});

  Future<void> getNews() async {
    try {
      var newsApi = NewsApi();
      newsApi.init(
        debugLog: true,
        apiKey: 'f617ddffdbe148f68f75112ae028cb0d',
      );
      ArticleResponse responseNews = await newsApi.everything(
        q: newsType,
      );
      newsList = responseNews.articles;
    } catch (e) {
      print(e);
    }
  }
}
