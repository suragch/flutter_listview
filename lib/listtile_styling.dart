import 'package:flutter/material.dart';

class ListTileStylingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListTile styling')),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.wb_sunny),
        title: Text('Sun'),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        leading: Icon(Icons.brightness_3),
        title: Text('Moon'),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text('Star'),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );
}

// CircleAvatar and subtitlesx

//Widget _myListView(BuildContext context) {
//  return ListView(
//    children: <Widget>[
//      ListTile(
//        leading: CircleAvatar(
//          backgroundImage: AssetImage('assets/sun.jpg'),
//        ),
//        title: Text('Sun'),
//        subtitle: Text('93 million miles away'),
//      ),
//      ListTile(
//        leading: CircleAvatar(
//          backgroundImage: AssetImage('assets/moon.jpg'),
//        ),
//        title: Text('Moon'),
//      ),
//      ListTile(
//        leading: CircleAvatar(
//          backgroundImage: AssetImage('assets/stars.jpg'),
//        ),
//        title: Text('Star'),
//      ),
//    ],
//  );
//}