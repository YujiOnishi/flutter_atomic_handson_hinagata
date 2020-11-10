import 'package:flutter/material.dart';

class HeaderImage extends StatelessWidget {
  HeaderImage({Key key, this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imagePath,
        width: 4000,
        height: 500,
        fit: BoxFit.none,
      ),
    );
  }
}
