import 'package:flutter/material.dart';
import './form.dart';

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text("This is a user page"),
            ),
            FlatButton(
              onPressed: () {},
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Go to form page'),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, anim1, anim2) => FormPage()));
            print("action button pressed");
          },
          child: Icon(Icons.plus_one),
        ));
  }
}
