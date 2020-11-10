import 'package:flutter/material.dart';

//atoms
import '../atoms/sideInfoSearchField.dart';
import '../atoms/sideInfoSearchTitle.dart';

class SideInfoSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
          child: SideInfoSearchTitle(),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: SideInfoSearchField(),
        ),
      ],
    );
  }
}
