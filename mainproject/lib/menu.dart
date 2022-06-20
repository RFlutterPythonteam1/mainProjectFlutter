import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animation_list/animation_list.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> data = [
    {
      'title': '감독',
      'backgroundColor': Colors.grey,
    },
    {
      'title': '주연 배우',
      'backgroundColor': Colors.grey,
    },
     {
      'title': '조연 배우',
      'backgroundColor': Colors.grey,
    },
    {
      'title': '예측',
      'backgroundColor': Colors.grey,
    },
    {
      'title': '차트',
      'backgroundColor': Colors.grey,
    },
  ];

  Widget _buildTile(String str, Color backgroundColor, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (str == "감독") {
          Navigator.pushNamed(context, '/director');
        }
        if (str == "주연 배우") {
          Navigator.pushNamed(context, '/actor');
        }
        if (str == "조연 배우") {
          Navigator.pushNamed(context, '/actor2');
        }
        if (str == "예측") {
          Navigator.pushNamed(context, '/Input');
        }
        if (str == "차트") {
          Navigator.pushNamed(context, '/menu');
        }
      },
      child: Container(
        child: Center(
          child: Text(
            str,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: backgroundColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,
        primary: true,
        elevation: 0,
      ),
      body: Center(
        child: AnimationList(
            children: data.map((item) {
          return _buildTile(item['title'], item['backgroundColor'], context);
        }).toList()),
      ),
    );
  }
}