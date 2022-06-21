import 'package:flutter/material.dart';
import 'package:mainproject/data.dart';
import 'package:mainproject/directors.dart';
import 'package:mainproject/inputData.dart';
import 'package:mainproject/jo_actor.dart';
import 'package:mainproject/jo_actor_show.dart';
import 'package:mainproject/ju_actor.dart';
import 'package:mainproject/ju_actor_show.dart';
import 'package:mainproject/ju_actor.dart';
import 'package:mainproject/login.dart';
import 'package:mainproject/menu.dart';
import 'package:mainproject/predict.dart';
import 'package:mainproject/showchart.dart';
import 'package:mainproject/singup.dart';
import 'package:mainproject/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const SignUp(),
        '/Login': (context) => const LoginPage(),
        '/T': (context) => const TestScreen(),
        '/Input': (context) => const First(),
        '/director': (context) => const Director(),
        '/JoActor': (context) => const JoActor(),
        '/signup': (context) => const SignUp(),
        '/menu': (context) => MenuPage(),
        '/predict': (context) => const Predict(),
        '/chart': (context) => const MyHomePage(),
        '/JuActor': (context) => const JuActor(),
        '/JuActorShow': (context) => const JuActorShow(),
        '/JoActorShow': (context) => const JoActorShow(),
      },
      initialRoute: '/Login',
    );
  }
}
