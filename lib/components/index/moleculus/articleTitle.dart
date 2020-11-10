import 'package:flutter/material.dart';
import '../atoms/articleDate.dart';
import '../atoms/articleTitleText.dart';


class ArticleTitle extends StatelessWidget {
  ArticleTitle({Key key, this.date, this.title}) : super(key: key);
  final String date;
  final String title;


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 0,
            bottom: 0.0,
            right: 0,
            left: 0,
          ),
          child: ArticleDate(date: date),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 0.0,
            bottom: 10.0,
            right: 0,
            left: 0,
          ),
          child: ArticleTitleText(title: title,),
        ),
      ],
    );
  }
}
