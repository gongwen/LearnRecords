import 'package:flutter/material.dart';

class WidgetsBasicsRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basics Row-Column"),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return new ListView(
      children: <Widget>[
        getRowWidget(),
        getColumnWidget(),
      ],
    );
  }

  Widget getRowWidget() {
    //Flutter 布局（七）- Row、Column详解(https://juejin.im/post/5b623d8c5188257f0b583c77)
    return getItemWidget(
      title: "Row",
      childWidget: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisAlignment.spaceBetween"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text("child"),
                new Text("child"),
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisAlignment.spaceAround"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text("child"),
                new Text("child"),
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisAlignment.spaceEvenly"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Text("child"),
                new Text("child"),
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisAlignment.start"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisAlignment.center"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisAlignment.end"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("CrossAxisAlignment.start"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 50.0,
                  width: 1.0,
                ),
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("CrossAxisAlignment.center"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  height: 50.0,
                  width: 1.0,
                ),
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("CrossAxisAlignment.end"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                new Container(
                  height: 50.0,
                  width: 1.0,
                ),
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("CrossAxisAlignment.baseline-TODO"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("CrossAxisAlignment.stretch-TODO"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisSize.max"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("MainAxisSize.min"),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text("child"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("VerticalDirection-TODO"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("TextBaseline-TODO"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: new Text("TextDirection:阿拉伯语系的兼容设置，一般无需处理"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getColumnWidget() {
    return getItemWidget(
      title: "Column",
      childWidget: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: new Text(
                      "以下用法参考Row：\nMainAxisAlignment\nCrossAxisAlignment\nMainAxisSize\nTextDirection\nTextBaseline"),
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
                new Text("VerticalDirection.down"),
              ],
            ),
          ),
          new Container(
            height: 100.0,
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Column(
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                new Text("child1"),
                new Text("child2"),
                new Text("child3"),
              ],
            ),
          ),
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text("VerticalDirection.up"),
              ],
            ),
          ),
          new Container(
            height: 100.0,
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Column(
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                new Text("child1"),
                new Text("child2"),
                new Text("child3"),
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
