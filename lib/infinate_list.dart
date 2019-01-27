import 'package:flutter/material.dart';

class InfiniteListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Infinite ListView')),
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
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('row $index'),
      );
    },
  );
}

// with dividers

//Widget _myListView(BuildContext context) {
//  return ListView.separated(
//    itemCount: 1000,
//    itemBuilder: (context, index) {
//      return ListTile(
//        title: Text('row $index'),
//      );
//    },
//    separatorBuilder: (context, index) {
//      return Divider();
//    },
//  );
//}