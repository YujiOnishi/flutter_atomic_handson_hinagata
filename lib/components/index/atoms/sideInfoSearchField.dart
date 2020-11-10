import 'package:flutter/material.dart';

class SideInfoSearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(
          color: Colors.grey,
        ),
        maxLines: 1,
        decoration: const InputDecoration(
          hintText: '記事を検索',
        ),
      ),
    );
  }
}
