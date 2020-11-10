import 'package:flutter/material.dart';

import '../atoms/articleBadge.dart';

class ArticleBadges extends StatelessWidget {
  ArticleBadges({Key key, this.badges}) : super(key: key);
  final List badges;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 0,
            bottom: 10.0,
            right: 0,
            left: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: createArticleBadges(),
          ),
        ),
      ],
    );
  }

  List<Widget> createArticleBadges() {
    if (badges != null && badges.length > 0) {
      List<Widget> widgets = [];
      badges.forEach(
        (element) {
          widgets.add(
            Container(
              padding: EdgeInsets.only(
                top: 0,
                bottom: 0,
                right: 10.0,
                left: 0,
              ),
              child: ArticleBadge(badge: element),
            ),
          );
        },
      );

      return widgets;
    }
    return [Container()];
  }
}
