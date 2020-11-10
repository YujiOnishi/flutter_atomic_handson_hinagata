import 'package:flutter/material.dart';

class ArticleContentStandard extends StatelessWidget {
  ArticleContentStandard({Key key, this.content}) : super(key: key);
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
      ),
    );
  }
}
