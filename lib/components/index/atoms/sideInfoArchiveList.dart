import 'package:flutter/material.dart';
import '../../commons/atoms/sideInfoLink.dart';

class SideInfoArchiveList extends StatelessWidget {
  SideInfoArchiveList({Key key, this.archive}) : super(key: key);
  final String archive;

  @override
  Widget build(BuildContext context) {
    return Container(child: SideInfoLink(text: archive));
  }
}
