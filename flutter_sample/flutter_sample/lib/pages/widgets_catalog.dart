import 'package:flutter/material.dart';

class WidgetsCatalog extends StatelessWidget {
  final List<String> _widgetsCatalogList = [
    'Basics-TODO',
    'Material Components-TODO',
    'Cupertino (iOS-style widgets)-TODO',
    'Layout-TODO',
    'Text-TODO',
    'Assets, Images, and Icons-TODO',
    'Input-TODO',
    'Animation and Motion-TODO',
    'Interaction Models-TODO',
    'Styling-TODO',
    'Painting and effects-TODO',
    'Async-TODO',
    'Scrolling-TODO',
    'Accessibility-TODO'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("Widgets Catalog"),
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
          padding: new EdgeInsets.only(left: 20.0, right: 20.0),
          height: 50.0,
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
        Navigator.of(context).pushNamed('/widgets_basics');
        break;
    }
  }
}
