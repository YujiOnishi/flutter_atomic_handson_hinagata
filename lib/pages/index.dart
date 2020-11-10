import 'package:flutter/material.dart';

//template
import '../components/index/indexTemplate.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    Map data = getData();

    return SafeArea(
      child: IndexTemplate(
        data: data,
      ),
    );
  }

  Map getData() {
    //DBから値を取ってくる想定
    return {
      "title": "Flutter Atomic Design",
      "header": {
        "title": "Flutter Atomic Design",
        "imagePath": "images/nature.jpg",
      },
      "body": {
        "articles": [
          {
            "id": 2,
            "date": "2020-12-5",
            "title": "Flutter Atomic Designへようこそ！",
            "badges": [
              "Flutter",
              "デザイン",
              "設計手法",
            ],
            "contents": [
              {
                "style": "standard",
                "content": "今日はflutterを利用してアトミックデザインについて学びます。"
              },
              {"style": "divide", "content": "Atomic Designとは？"},
              {"style": "standard", "content": "UIデザインの銀の弾丸と呼ばれている……"},
            ]
          },
          {
            "id": 1,
            "date": "2020-11-14",
            "title": "Flutter HandsOnへようこそ！",
            "badges": [
              "Flutter",
              "Flutter For Web",
              "デザイン",
              "設計手法",
            ],
            "contents": [
              {
                "style": "standard",
                "content": "今日はflutterのデザインについて学びます。"
              },
              {"style": "divide", "content": "Flutterとは？"},
              {"style": "standard", "content": "ウィジェットの組み合わせで……"},
            ]
          },
        ],
        "info":{
          "userName":"zutai_dekame",
          "archives":[]
        }
      },
      "footer": {
        "title": "Flutter Atomic Design",
        "userName": "zutai_dekame",
      }
    };
  }
}
