import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './form.dart';




class List extends StatefulWidget {
  List({Key key}) : super(key: key);

  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  _launchURL(url) {
    return () async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    };
  }

  _editCard() {
    print("edit a particular card");
    Navigator.push(context,
        PageRouteBuilder(pageBuilder: (context, anim1, anim2) => FormPage()));
  }

  _addCard() {
    print("add card here");
    Navigator.push(context,
        PageRouteBuilder(pageBuilder: (context, anim1, anim2) => FormPage()));
  }

  Widget _cardBody(String url, String description) {
    var imagePath = "images/default.png";
    if (url.contains("stackoverflow")) {
      imagePath = "images/stackoverflow.jpg";
    } else if (url.contains("youtube")) {
      imagePath = "images/youtube.jpg";
    }

    return new GestureDetector(
      onDoubleTap: _launchURL(url),
      onLongPress: _editCard,
      child: Container(
        height: 120, //MediaQuery.of(context).size.height * 0.2,
        child: Card(
          child: ListTile(
            // onTap: _launchURL(url),
            // onLongPress: _editCard,
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(imagePath),
            ),
            title: Column(
              children: <Widget>[
                Text(description),
                Text(
                  url,
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderAllItems() {
    var projectData = [
    {
      "description": "Connect to facebook SDK, for part 1 of project",
      "url":
          "https://stackoverflow.com/questions/56268272/flutter-how-to-connect-to-facebooks-sdk-app-event-using-a-codeless-setup"
    },
    {
      "description": "Fixed native UIViewController in Flutter",
      "url":
          "https://stackoverflow.com/questions/56290461/open-native-uiviewcontroller-in-flutter"
    },
    {
      "description": "Performance fix",
      "url": "https://flutter.dev/docs/testing/ui-performance"
    },
    {
      "description": "Multiple build configuration",
      "url":
          "https://stackoverflow.com/questions/56216312/multiple-targets-and-multiple-build-configurations-in-flutter"
    },
    // {
    //   "description": "Adding custom icons",
    //   "url": "https://www.youtube.com/watch?v=uojqV6hUEDc"
    // },
    // {
    //   "description": "Icon bug fix, yet again",
    //   "url": "https://www.youtube.com/watch?v=uojqV6hUEDc"
    // }
  ];

    return new ListView.builder(
      itemCount: projectData.length,
      itemBuilder: (context, index) {
        var url = projectData[index]["url"];
        var description = projectData[index]["description"];
        // return _cardBody(url, description);
        return new Stack(
                      children: <Widget>[
                        new Padding(
                          padding: const EdgeInsets.only(left: 50.0),
                          child: new Card(
                            margin: new EdgeInsets.all(20.0),
                            elevation: 5.0,
                            child: new Container(
                              // width: double.INFINITY,
                              child: _cardBody(url, description),
                              height: 200.0,
                              // color: Colors.green,
                            ),
                          ),
                        ),
                        new Positioned(
                          top: 0.0,
                          bottom: 0.0,
                          left: 35.0,
                          child: new Container(
                            // height: double.INFINITY,
                            width: 1.0,
                            color: Colors.blue,
                          ),
                        ),
                        new Positioned(
                          top: 100.0,
                          left: 15.0,
                          child: new Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: new Container(
                              margin: new EdgeInsets.all(5.0),
                              height: 30.0,
                              width: 30.0,
                              decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red),
                            ),
                          ),
                        )
                      ],
                    );
      }, //itembuilder end
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Page"),
        ),
        body: _renderAllItems(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("action button pressed");
            _addCard();
          },
          child: Icon(Icons.plus_one),
        ));
  }
}

