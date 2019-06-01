
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  
  FormPage({Key key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Page"),
      ),
      body: Center(
        child: Text("This is a form page"),
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
