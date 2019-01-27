import 'package:flutter/material.dart';

class UpdateListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tap to add, long press to delete')),
      body: BodyLayout(),
    );
  }
}


class BodyLayout extends StatefulWidget {
  @override
  BodyLayoutState createState() {
    return new BodyLayoutState();
  }
}

class BodyLayoutState extends State<BodyLayout> {

  List<String> titles = ['Sun', 'Moon', 'Star'];

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        final item = titles[index];
        return Card(
          child: ListTile(
            title: Text(item),

            onTap: () { //                                  <-- onTap
              setState(() {
                titles.insert(index, 'Planet');
              });
            },

            onLongPress: () { //                            <-- onLongPress
              setState(() {
                titles.removeAt(index);
              });
            },

          ),
        );
      },
    );
  }
}
