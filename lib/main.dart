import 'package:flutter/material.dart';
import 'pages/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      title: 'Laba 6',
      home: LoginScreen(),
    );
  }
}
