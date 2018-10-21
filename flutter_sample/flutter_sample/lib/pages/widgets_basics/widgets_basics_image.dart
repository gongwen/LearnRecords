import 'dart:io';

import 'package:flutter/material.dart';

class WidgetsBasicsImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basics Image"),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return new ListView(
      children: <Widget>[
        getTextWidget(),
      ],
    );
  }

  Widget getTextWidget() {
    //Paint foregroundPaint = new Paint();
    //foregroundPaint.color(  Colors.yellow);
    return getItemWidget(
      title: "Text",
      childWidget: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("图片的四种加载方式"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://flutter.io/images/homepage/screenshot-2.png"),
                  width: 60.0,
                  height: 100.0,
                  alignment: Alignment.topRight,
                ),
                Image.network(
                    "https://flutter.io/images/homepage/screenshot-2.png",
                    width: 60.0,
                    height: 100.0,
                    alignment: Alignment.bottomRight),
                Image.asset(
                  "images/contact_header.png",
                  width: 80.0,
                  height: 100.0,
                  alignment: Alignment.bottomCenter,
                  color: Colors.red,
                  fit: BoxFit.fitHeight,
                  colorBlendMode: BlendMode.dstOver,
                ),
                Image.file(
                  File(""),
                  width: 60.0,
                  height: 100.0,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("fit：BoxFit.none"),
              ],
            ),
          ),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_none.png",
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("fit：BoxFit.fill"),
              ],
            ),
          ),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_fill.png",
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("fit：BoxFit.contain"),
              ],
            ),
          ),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_contain.png",
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("fit：BoxFit.cover"),
              ],
            ),
          ),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_cover.png",
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("fit：BoxFit.fitWidth"),
              ],
            ),
          ),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_fitWidth.png",
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("fit：BoxFit.fitHeight"),
              ],
            ),
          ),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_fitHeight.png",
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("fit：BoxFit.scaleDown"),
              ],
            ),
          ),
          Image.network(
            "https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_scaleDown.png",
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
