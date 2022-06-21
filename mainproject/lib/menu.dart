import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:animation_list/animation_list.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> data = [
    {
      'title': '감독',
      'backgroundColor': Color.fromARGB(255, 119, 192, 168),
    },
    {
      'title': '주연 배우',
      'backgroundColor': Color.fromARGB(255, 119, 192, 168),
    },
    {
      'title': '조연 배우',
      'backgroundColor': Color.fromARGB(255, 119, 192, 168),
    },
    {
      'title': '예측',
      'backgroundColor': Color.fromARGB(255, 119, 192, 168),
    },
    {
      'title': '차트',
      'backgroundColor': Color.fromARGB(255, 119, 192, 168),
    },
  ];

  Widget _buildTile(String str, Color backgroundColor, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (str == "감독") {
          Navigator.pushNamed(context, '/director');
        }
        if (str == "주연 배우") {
          Navigator.pushNamed(context, '/JuActorShow');
        }
        if (str == "조연 배우") {
          Navigator.pushNamed(context, '/JoActorShow');
        }
        if (str == "예측") {
          Navigator.pushNamed(context, '/Input');
        }
        if (str == "차트") {
          Navigator.pushNamed(context, '/chart');
        }
      },
      child: Container(
        child: Center(
          child: Text(
            str,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
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
      backgroundColor: Color.fromARGB(255, 215, 223, 219),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 216, 223, 219),
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
