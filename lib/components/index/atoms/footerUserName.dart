import 'package:flutter/material.dart';
import '../../commons/atoms/footerText.dart';

class FooterUserName extends StatelessWidget {
  FooterUserName({Key key, this.userName}) : super(key: key);
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FooterText(
        text: 'Powered By $userName',
      ),
    );
  }
}
