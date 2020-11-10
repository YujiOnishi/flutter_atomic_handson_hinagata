import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  FooterText({Key key, this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Text(
          '$text',
          style: Theme.of(context).textTheme.subtitle2,
        ),
    );
  }
}
