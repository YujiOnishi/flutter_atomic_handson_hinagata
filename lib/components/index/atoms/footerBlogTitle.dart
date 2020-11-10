import 'package:flutter/material.dart';

//atoms
import '../../commons/atoms/footerText.dart';

class FooterBlogTitle extends StatelessWidget {
  FooterBlogTitle({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FooterText(
        text: title,
      ),
    );
  }
}
