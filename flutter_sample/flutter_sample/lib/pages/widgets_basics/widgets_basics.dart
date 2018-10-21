import 'package:flutter/material.dart';

class WidgetsBasics extends StatelessWidget {
  final List<String> _widgetsCatalogList = [
    'Container',
    'Row-Column',
    'Image',
    'Text',
    'Scaffold-TODO',
    'Appbar-TODO',
    'Icon\nRaisedButton\nPlaceholder\nFlutterLogo',
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("Widgets Basics"),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return new ListView.builder(
      itemCount: _widgetsCatalogList.length,
      itemBuilder: (BuildContext context, int position) {
        return getRow(context, position);
      },
    );
  }

  Widget getRow(BuildContext context, int position) {
    return Card(
      child: new InkWell(
        onTap: () {
          _onItemClick(context, position);
        },
        child: new Container(
          padding: new EdgeInsets.only(
              left: 20.0, top: 15.0, right: 20.0, bottom: 15.0),
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new Text(
                  _widgetsCatalogList[position],
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemClick(BuildContext context, int position) {
    switch (position) {
      case 0:
        Navigator.of(context).pushNamed('/widgets_basics_container');
        break;
      case 1:
        Navigator.of(context).pushNamed('/widgets_basics_row_column');
        break;
      case 2:
        Navigator.of(context).pushNamed('/widgets_basics_image');
        break;
      case 3:
        Navigator.of(context).pushNamed('/widgets_basics_text');
        break;
      case 4:
        Navigator.of(context).pushNamed('/widgets_basics_scaffold');
        break;
      case 6:
        Navigator.of(context).pushNamed('/widgets_basics_other');
        break;
    }
  }
}
