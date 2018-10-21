import 'package:flutter/material.dart';

class WidgetsBasicsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basics Container "),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return new ListView(
      children: <Widget>[
        getContainerWidget(),
      ],
    );
  }

  Widget getContainerWidget() {
    return getItemWidget(
      title: 'Continer\n注意：\n属性color，decoration不能同时使用',
      childWidget: new Column(
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Text(
                  'alignment\npadding\ncolor\nwidth\nheight\nconstraints\nmargin\ntransform\nchild',
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  //alignment: Alignment(1.0, 1.0),
                  //alignment: Alignment.bottomRight,
                  //alignment: AlignmentDirectional.bottomEnd,
                  alignment: FractionalOffset.bottomRight,
                  padding: EdgeInsets.all(30.0),
                  color: Colors.red,
                  //width: 200.0,
                  //height: 100.0,
                  margin: EdgeInsets.all(20.0),
                  child: Text('Container'),
                  constraints:
                      BoxConstraints(minWidth: 200.0, maxHeight: 100.0),
                  transform: Matrix4.skewX(3.0),
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
                new Text(
                  'decoration:BoxDecoration',
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height: 100.0,
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://flutter.io/images/homepage/screenshot-2.png"),
                        fit: BoxFit.fill),
                  ),
                  alignment: AlignmentDirectional.bottomCenter,
                  padding: EdgeInsets.only(bottom: 20.0),
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
                new Text(
                  'decoration:ShapeDecoration',
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height: 100.0,
                  margin: EdgeInsets.all(15.0),
                  decoration: ShapeDecoration(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 3.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      )),
                  alignment: AlignmentDirectional.bottomCenter,
                  padding: EdgeInsets.only(bottom: 20.0),
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
                new Text(
                  'decoration:UnderlineTabIndicator',
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height: 100.0,
                  margin: EdgeInsets.all(15.0),
                  decoration: UnderlineTabIndicator(
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                        style: BorderStyle.solid),
                  ),
                  child: Text(
                    "UnderlineTabIndicator",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                  alignment: AlignmentDirectional.bottomCenter,
                  padding: EdgeInsets.only(bottom: 20.0),
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
                new Text(
                  'decoration:FlutterLogoDecoration',
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height: 100.0,
                  margin: EdgeInsets.all(15.0),
                  decoration: FlutterLogoDecoration(
                    lightColor: Colors.white,
                    darkColor: Colors.black,
                  ),
                  alignment: AlignmentDirectional.bottomCenter,
                  padding: EdgeInsets.only(bottom: 20.0),
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
                new Text(
                  'decoration:FlutterLogoDecoration',
                ),
              ],
            ),
          ),
          new Container(
            color: Colors.blue,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 200.0,
                  height: 100.0,
                  margin: EdgeInsets.all(15.0),
                  foregroundDecoration: BoxDecoration(
                    color: Color(0x33ffffff),
                  ),
                  alignment: AlignmentDirectional.bottomCenter,
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text("foregroundDecoration"),
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
