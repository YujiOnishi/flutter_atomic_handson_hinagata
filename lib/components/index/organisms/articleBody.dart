import 'package:flutter/material.dart';

import '../moleculus/articleTitle.dart';
import '../moleculus/articleBadges.dart';
import '../moleculus/articleContents.dart';

class ArticleBodyOrganisms extends StatelessWidget {
  ArticleBodyOrganisms({Key key, this.data}) : super(key: key);
  final List data;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: createArticles(context));
  }

  List<Widget> createArticles(BuildContext context) {
    if (data != null && data.length > 0) {
      List<Widget> widgets = [];

      data.forEach(
        (element) {
          String date = element['date'];
          String title = element['title'];
          List badges = element['badges'];
          List contents = element['contents'];

          Widget widget = Container(
            padding: EdgeInsets.only(
              top: 0,
              bottom: 100,
              right: 0,
              left: 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                  ),
                  child: ArticleTitle(
                    date: date,
                    title: title,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 0.0,
                    bottom: 10.0,
                    right: 0,
                    left: 0,
                  ),
                  child: ArticleBadges(
                    badges: badges,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30.0,
                    bottom: 20.0,
                    right: 0,
                    left: 0,
                  ),
                  child: ArticleContents(
                    contents: contents,
                  ),
                ),
              ],
            ),
          );

          widgets.add(widget);
        },
      );
      return widgets;
    }
    return [Container()];
  }
}
