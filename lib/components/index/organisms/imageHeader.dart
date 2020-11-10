import 'package:flutter/material.dart';
import '../atoms/headerImage.dart';

class ImageHeaderOrganisms extends StatelessWidget {
  ImageHeaderOrganisms({Key key, this.data}) : super(key: key);
  final Map data;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderImage(imagePath: data['imagePath']),
    );
  }
}
