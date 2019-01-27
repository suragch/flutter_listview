import 'package:flutter/material.dart';

class CustomListItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom list item')),
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

  // the Expanded widget lets the columns share the space
  Widget column = Expanded(
    child: Column(
      // align the text to the left instead of centered
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Title', style: TextStyle(fontSize: 16),),
        Text('subtitle'),
      ],
    ),
  );
  
  return ListView.builder(
    itemBuilder: (context, index) {
      return Card(
        child: InkWell(
          onTap: () {
            print('tapped');
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                column,
                column,
              ],
            ),
          ),
        ),
      );
    },
  );

}