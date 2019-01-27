import 'package:flutter/material.dart';

class TouchDetectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Touch detection')),
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
        title: Text('Sun'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          print('Sun');
        },
      ),
      ListTile(
        title: Text('Moon'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          print('Moon');
        },
      ),
      ListTile(
        title: Text('Star'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          print('Star');
        },
      ),
    ],
  );
}
