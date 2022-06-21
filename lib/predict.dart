import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';


class Predict extends StatelessWidget {
  const Predict({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: Text("예측 결과"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${Result_msg.pre0}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${Result_msg.pre}',
               style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('${Result_msg.img}',
              height: 150),
            ),
        ]),
      ),

    );
  }
}