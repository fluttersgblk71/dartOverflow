
import 'package:flutter/material.dart';

class List extends StatefulWidget {
  
  List({Key key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list Page"),
      ),
      body: Center(
        child: Text("This is a list page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print ("action button pressed");
        },
        child: Icon(Icons.plus_one),
      )
    );
  }
}
