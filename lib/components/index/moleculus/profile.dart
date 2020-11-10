import 'package:flutter/material.dart';
import '../atoms/profileUserName.dart';
import '../atoms/profileTitle.dart';

class Profile extends StatelessWidget {
  Profile({Key key, this.userName}) : super(key: key);
  final String userName;

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
          child: ProfileTitle(),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: ProfileUserName(
            userName: userName,
          ),
        ),
      ],
    );
  }
}
