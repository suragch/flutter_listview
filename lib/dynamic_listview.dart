import 'package:flutter/material.dart';

class DynamicListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic ListView')),
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

  // backing data
  final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
  'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
  'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
  'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
  'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
  'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
  'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
  'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
  'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

  return ListView.builder(
    itemCount: europeanCountries.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(europeanCountries[index]),
      );
    },
  );

}