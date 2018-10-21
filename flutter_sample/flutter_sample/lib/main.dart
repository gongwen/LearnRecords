import 'package:flutter/material.dart';
import 'package:flutter_sample/pages/widgets_basics/widgets_basics.dart';
import 'package:flutter_sample/pages/widgets_basics/widgets_basics_container.dart';
import 'package:flutter_sample/pages/widgets_basics/widgets_basics_image.dart';
import 'package:flutter_sample/pages/widgets_basics/widgets_basics_other.dart';
import 'package:flutter_sample/pages/widgets_basics/widgets_basics_row_column.dart';
import 'package:flutter_sample/pages/widgets_basics/widgets_basics_scaffold.dart';
import 'package:flutter_sample/pages/widgets_basics/widgets_basics_text.dart';
import 'package:flutter_sample/pages/widgets_catalog.dart';
typedef void _OnItemClick();

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Sample',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MainHomePage(title: 'Flutter Sample Home Page'),
      routes: <String, WidgetBuilder>{
        '/widgets_catalog': (BuildContext context) => new WidgetsCatalog(),
        '/widgets_basics': (BuildContext context) => new WidgetsBasics(),
        '/widgets_basics_container': (BuildContext context) =>
            new WidgetsBasicsContainer(),
        '/widgets_basics_row_column': (BuildContext context) =>
            new WidgetsBasicsRowColumn(),
        '/widgets_basics_text': (BuildContext context) =>
            new WidgetsBasicsText(),
        '/widgets_basics_image': (BuildContext context) =>
            new WidgetsBasicsImage(),
        '/widgets_basics_scaffold': (BuildContext context) =>
            new WidgetsBasicsScaffold(),
        '/widgets_basics_other': (BuildContext context) =>
            new WidgetsBasicsOther(),
      },
    );
  }
}

class MainHomePage extends StatefulWidget {
  MainHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainHomePageState createState() => new _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final List<String> _titleList = ['Widgets Catalog'];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body:
          getBody(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget getBody() {
    return new ListView.builder(
      itemCount: _titleList.length,
      itemBuilder: (BuildContext context, int position) {
        return getRow(
          position: position,
          onItemClick: () {
            switch (position) {
              case 0:
                Navigator.of(context).pushNamed("/widgets_catalog");
                break;
            }
          },
        );
      },
    );
  }

  Widget getRow({position: int, onItemClick: _OnItemClick}) {
    return Card(
      child: new InkWell(
        onTap: () {
          onItemClick();
        },
        child: new Container(
          padding: new EdgeInsets.only(left: 20.0, right: 20.0),
          height: 50.0,
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  _titleList[position],
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
