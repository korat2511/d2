import 'package:d2/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Speech to Text",
      theme: ThemeData(
        fontFamily: "Golos Text"
      ),
      home: LoginScreen(),
    );
  }
}

