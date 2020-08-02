import 'package:flutter/material.dart';
import 'package:greate_places_app/screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Places'), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceSreen.routerName);
            })
      ]),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
