import 'package:flutter/material.dart';

import '../../commons/atoms/sideInfoLink.dart';

class ProfileUserName extends StatelessWidget {
  ProfileUserName({Key key, this.userName}) : super(key: key);
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
      SideInfoLink(text:userName)
    );
  }
}