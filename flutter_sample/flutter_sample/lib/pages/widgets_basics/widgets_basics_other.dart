import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class WidgetsBasicsOther extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Basics Other"),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return new ListView(
      children: <Widget>[
        getIconWidget(),
        getRaisedButtonWidget(),
        getPlaceholderWidget(),
        getFlutterLogoWidget(),
      ],
    );
  }

  Widget getIconWidget() {
    //https://github.com/flutter/cupertino_icons
    return getItemWidget(
      title: "Icon",
      childWidget: new Column(
        children: <Widget>[
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        MdiIcons.network,
                        color: Colors.yellow,
                      ),
                      Icon(MdiIcons.brush),
                      Icon(MdiIcons.vibrate),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getRaisedButtonWidget() {
    //https://github.com/flutter/cupertino_icons
    return getItemWidget(
      title: "RaisedButton",
      childWidget: new Column(
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: new Text("RaisedButton属性enabled值 取决于onPressed是否为null"),
                ),
              ],
            ),
          ),
          new Container(
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: RaisedButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "RaisedButton onPressed");
              },
              onHighlightChanged: (isChanged) {
                Fluttertoast.showToast(
                    msg: "RaisedButton onHighlightChanged :" +
                        isChanged.toString());
              },
              //与textColor同时使用，不生效
              textTheme: ButtonTextTheme.normal,
              textColor: Colors.white,
              disabledTextColor: Colors.black,
              color: Colors.red,
              disabledColor: Colors.green,
              highlightColor: Colors.grey,
              splashColor: Colors.yellow,
              colorBrightness: Brightness.light,
              elevation: 5.0,
              highlightElevation: 16.0,
              disabledElevation: 4.0,
              padding: EdgeInsets.all(30.0),
              //圆角，边框，圆形
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.black, width: 2.0, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              clipBehavior: Clip.hardEdge,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              animationDuration: Duration(seconds: 5),
              child: Text("RaisedButton"),
            ),
          ),
        ],
      ),
    );
  }

  Widget getPlaceholderWidget() {
    return getItemWidget(
      title: "PlaceHolder",
      childWidget: new Column(
        children: <Widget>[
          new Container(
            color: Colors.blue,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(15.0),
                        child: Placeholder(
                          color: Colors.grey,
                          strokeWidth: 3.0,
                          fallbackWidth: 30.0,
                          fallbackHeight: 30.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(25.0),
                        child: Placeholder(
                          color: Colors.yellow,
                          strokeWidth: 9.0,
                          fallbackWidth: 50.0,
                          fallbackHeight: 50.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(35.0),
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 18.0,
                          fallbackWidth: 70.0,
                          fallbackHeight: 70.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getFlutterLogoWidget() {
    return getItemWidget(
      title: "FlutterLogo",
      childWidget: new Column(
        children: <Widget>[
          new Container(
            color: Colors.grey,
            padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlutterLogo(
                  size: 80.0,
                  textColor: Colors.red,
                  duration: Duration(milliseconds: 300),
                  style: FlutterLogoStyle.stacked,
                ),
                FlutterLogo(
                  size: 80.0,
                  textColor: Colors.red,
                  duration: Duration(milliseconds: 300),
                  style: FlutterLogoStyle.horizontal,
                ),
                FlutterLogo(
                  colors: Colors.green,
                  size: 80.0,
                  duration: Duration(milliseconds: 300),
                  style: FlutterLogoStyle.markOnly,
                  curve: Curves.fastOutSlowIn,
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
