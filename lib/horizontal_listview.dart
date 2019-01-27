import 'package:flutter/material.dart';

class HorizontalListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Horizontal ListView')),
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
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 1.0),
        color: Colors.tealAccent,
        child: Text('$index'),
      );
    },
  );
}