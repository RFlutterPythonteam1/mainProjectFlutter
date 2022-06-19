import 'package:flutter/material.dart';
import 'package:mainproject/directors.dart';
import 'package:mainproject/inputData.dart';
import 'package:mainproject/login.dart';
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
      },
      initialRoute: '/Login',
    );
  }
}
