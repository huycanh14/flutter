import 'package:flutter/material.dart';
import 'package:greate_places_app/widgets/iamge_input.dart';

class AddPlaceSreen extends StatefulWidget {
  static const routerName = '/add-place';

  @override
  _AddPlaceSreenState createState() => _AddPlaceSreenState();
}

class _AddPlaceSreenState extends State<AddPlaceSreen> {
  final _titleController = TextEditingController();
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
              child: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Title',
                      ),
                      controller: _titleController,
                    ),
                    SizedBox(height:  10.0, ),
                    ImageInput()
                  ],
                ),
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
