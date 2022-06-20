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
            
            Text('${Result_msg.pre}'),
            Image.asset('${Result_msg.img}',
            height: 150),
        ]),
      ),

    );
  }
}