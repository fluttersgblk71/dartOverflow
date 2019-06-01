import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

// _saveTextFields(url, description) async {
//   final SharedPreferences prefs = await SharedPreferences.getInstance();
//    prefs.setString('url', url);
//    prefs.setString('description', description);
// }

class _FormState extends State<FormPage> {
  // Create a text controller. We will use iturl to retrieve the current value
  // of the TextField!
  dynamic urlController = TextEditingController();
  dynamic descriptionController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    urlController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New Entry"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              // decoration: BoxDecoration(color: Colors.red),
              alignment: Alignment(1.0, 0.0),
              child: Column(children: <Widget>[
                Text('Url'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: urlController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Url'),
                  ),
                ),
              ]),
            ),
            Container(
                // decoration: BoxDecoration(color: Colors.grey),
                // height: MediaQuery.of(context).size.height * 0.3,
                // width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
              children: <Widget>[
                Text('Description'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: descriptionController,
                    maxLines: 4,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Description'),
                  ),
                ),
              ],
            )),
            FlatButton(
              // onPressed: () {
                // _saveTextFields(urlController.text, descriptionController.text);
              // },
              onPressed: (){},
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Save'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("action button pressed");
          },
          child: Icon(Icons.plus_one),
        ));
  }
}

// Define a Custom Form Widget
