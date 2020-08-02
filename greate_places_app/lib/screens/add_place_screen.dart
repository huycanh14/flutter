import 'package:flutter/material.dart';

class AddPlaceSreen extends StatefulWidget {
  static const routerName = '/add-place';

  @override
  _AddPlaceSreenState createState() => _AddPlaceSreenState();
}

class _AddPlaceSreenState extends State<AddPlaceSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a New Place'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[],
            ),
          ),
          RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add Place'),
              elevation: 0,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Theme.of(context).accentColor)
        ],
      ));
  }
}
