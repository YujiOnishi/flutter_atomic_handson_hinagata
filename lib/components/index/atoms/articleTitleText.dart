import 'package:flutter/material.dart';

class ArticleTitleText extends StatelessWidget {
  ArticleTitleText({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$title',
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
