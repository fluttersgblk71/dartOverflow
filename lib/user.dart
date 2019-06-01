import 'package:flutter/material.dart';
import './form.dart';
import './list.dart';

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
        title: Text("Welcome to Dart Overflow"),
      ),
      body: new Center(
        child: new Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Mr. Flutter",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.0
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 4.0),
              child: FlatButton(
                onPressed: () {
                  print ("Flat button pressed");
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) => List()
                    )
                  );
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Go to Project A'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: FlatButton(
                onPressed: () {
                  print ("Flat button pressed");
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) => List()
                    )
                  );
                },
                color: Colors.cyan,
                textColor: Colors.white,
                child: Text('Go to Project B'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: FlatButton(
                onPressed: () {
                  print ("Flat button pressed");
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) => List()
                    )
                  );
                },
                color: Colors.green,
                textColor: Colors.white,
                child: Text('Go to Project C'),
              ),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => FormPage())
          );
        },
        child: Icon(Icons.add)
      )
    );
  }
}
