import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class ArticleBadge extends StatelessWidget {
  ArticleBadge({Key key, this.badge}) : super(key: key);
  final String badge;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Badge(
        toAnimate: false,
        shape: BadgeShape.square,
        badgeColor: Colors.white54,
        borderRadius: BorderRadius.circular(8),
        badgeContent: Text(
          '$badge',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
