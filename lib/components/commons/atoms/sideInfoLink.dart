import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class SideInfoLink extends StatelessWidget {
  SideInfoLink({Key key, this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      
      
      StyledText(
        text: '<link href="">$text</link>',
        style: Theme.of(context).textTheme.subtitle2,
        softWrap: true,
        styles: {
          'link': ActionTextStyle(
            decoration: TextDecoration.underline,
            onTap: (_, attrs) => () {},
          ),
        },
      ),
    );
  }
}
