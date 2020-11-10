import 'package:flutter/material.dart';

//atoms
import '../atoms/sideInfoArchiveList.dart';
import '../atoms/sideInfoArchiveTitle.dart';
import '../atoms/sideInfoNoneArchives.dart';

class SideInfoArchives extends StatelessWidget {
  SideInfoArchives({Key key, this.archives}) : super(key: key);
  final List archives;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
          child: SideInfoArchiveTitle(),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 10,
            bottom: 0,
            right: 0,
            left: 0,
          ),
          child: createArchiveList(),
        ),
      ],
    );
  }

  Widget createArchiveList() {
    if (archives.length == 0) {
      return SideInfoNoneArchive();
    } else {
      List<Widget> archivesTitle=[];
      archives.forEach(
        (element) {
          Widget widget = SideInfoArchiveList(archive: element);
          archivesTitle.add(widget);
        },
      );

      return Column(children: archivesTitle);
    }
  }
}
