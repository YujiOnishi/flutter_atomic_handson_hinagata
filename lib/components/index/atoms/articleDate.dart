import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class ArticleDate extends StatelessWidget {
  ArticleDate({Key key, this.date}) : super(key: key);
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StyledText(
        text: '<alarm/> $date',
        style: Theme.of(context).textTheme.caption,
        styles: {
          'alarm': IconStyle(Icons.alarm),
        },
      ),
    );
  }
}
