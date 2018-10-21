import 'package:flutter/material.dart';

class WidgetsBasicsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basics Text"),
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
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("TextOverflow.clip"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Expanded(
                  child: new Text(
                    "child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
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
                new Text("TextOverflow.fade"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Expanded(
                  child: new Text(
                    "child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                  ),
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
                new Text("TextOverflow.ellipsis"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Expanded(
                  child: new Text(
                    "child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
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
                new Text("TextAlign,TextDirection,softWrap,textScaleFactor"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Expanded(
                  child: new Text(
                    "child1 - child2 - child3-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child-child3-child2-child1",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 3.0,
                      wordSpacing: 3.0,
                      //textBaseline: TextBaseline.ideographic
                      height: 2.0,
                      //foreground: foregroundPaint,
                      //background:
                      //decoration: new TextDecoration.combine(decorations)
                      decorationColor: Colors.yellow,
                      //decorationStyle:,
                      //debugLabel: "d",
                      //fontFamily:
                      //package:
                    ),
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.ltr,
                    softWrap: true,
                    textScaleFactor: 1.1,
                  ),
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
