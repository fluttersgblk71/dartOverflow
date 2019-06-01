import 'package:flutter/material.dart';
import './user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Overflow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: User()
    );
  }
}
