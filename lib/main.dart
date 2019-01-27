import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
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
  return ListView.separated(
    itemCount: 1000,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('row $index'),
      );
    },
    separatorBuilder: (context, index) {
      return Divider();
    },
  );
}

Widget _mainMenuListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Static ListView'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => StaticListView()),
          );
        },
      ),
      ListTile(
        title: Text('Dynamic ListView'),
        trailing: Icon(Icons.keyboard_arrow_right),
      ),
    ],
  );
}

class StaticListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Static ListView')),
      body: _myListView(),
    );
  }

  Widget _myListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Star'),
        ),
      ],
    );
  }
}
