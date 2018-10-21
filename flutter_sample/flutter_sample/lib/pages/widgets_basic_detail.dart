import 'package:flutter/material.dart';

class WidgetsBasics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Sample',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Basic Widgets"),
        ),
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    return new ListView(
      children: <Widget>[
        getContainerWidget(),
        getImageWidget(),
      ],
    );
  }

  Widget getContainerWidget() {
    return getItemWidget(
      title: "Container-TODO",
      childWidget: new Container(
        padding: new EdgeInsets.all(20.0),
        height: 100.0,
        width: 100.0,
        color: Colors.black,
        child: new Container(
          height: 10.0,
          width: 10.0,
          color: Colors.yellow,
        ),
      ),
    );
  }

  Widget getImageWidget() {
    return getItemWidget(
      title: "Image-TODO",
      childWidget: new Column(
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("Image..."),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Image.asset(
                  "images/contact_header.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getItemWidget({title: String, childWidget: Widget}) {
    return new Card(
      margin: new EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
      elevation: 3.0,
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              "Widget: $title",
              textAlign: TextAlign.start,
              style: new TextStyle(color: Colors.black, fontSize: 18.0),
            ),
            new Container(
              margin: new EdgeInsets.only(top: 20.0),
              child: childWidget,
            ),
          ],
        ),
      ),
    );
  }
}
