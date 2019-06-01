
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  
  User({Key key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Page"),
      ),
      body: Center(
        child: Text("This is a user page"),
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
