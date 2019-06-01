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
      body: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              width: 100.0,
              height: 100.0,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new AssetImage('images/dash.jpg')
                )
              )
            ),
            FlatButton(
              onPressed: () {
                print ("Flat button pressed");
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, anim1, anim2) => FormPage()
                  )
                );
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Go to form page'),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print ("action button pressed");
          Navigator.push(context,
            //PageRouteBuilder(
            //  pageBuilder: (context, anim1, anim2) => FormPage()
            //)
            MaterialPageRoute(builder: (context) => FormPage())
          );
        },
        child: Icon(Icons.add),
        mini: true,
      )
    );
  }
}
