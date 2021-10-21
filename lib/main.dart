import 'package:flutter/material.dart';
import 'package:project/screens/auth_screen.dart';
import 'package:project/screens/introscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => AuthScreen(),
        'reigster': (context) => AuthScreen(),
      },
      home: IntroScreens(),
      debugShowCheckedModeBanner: false,
    );
  }
}
