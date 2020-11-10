import 'package:flutter/material.dart';

import '../atoms/articleContentStandard.dart';
import '../atoms/articleContentDivide.dart';

class Style {
  static String standard = "standard";
  static String divide = "divide";
}

class ArticleContents extends StatelessWidget {
  ArticleContents({Key key, this.contents}) : super(key: key);
  final List contents;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: createArticleContents(context),
          ),
        ),
      ],
    );
  }

  List<Widget> createArticleContents(BuildContext context) {
    if (contents != null && contents.length > 0) {
      List<Widget> widgets = [];
      contents.forEach(
        (element) {
          if (element['style'] == Style.standard) {
            widgets.add(
              Container(
                  padding: EdgeInsets.only(
                    top: 10.0,
                    bottom: 10.0,
                    right: 0,
                    left: 0,
                  ),
                  child: ArticleContentStandard(
                    content: element['content'],
                  )),
            );
          } else if (element['style'] == Style.divide) {
            widgets.add(
              Container(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 0,
                  right: 0,
                  left: 0,
                ),
                child: ArticleContentDivide(content: element['content'],)
              ),
            );
          }
        },
      );
      return widgets;
    }
    return [Container()];
  }
}
