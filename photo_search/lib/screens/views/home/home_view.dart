import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        builder: (context, HomeViewModel model, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Photo search view'),
              ),
              body: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text(
                        'Photo Browser',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TextField(
                    decoration:
                        InputDecoration(hintText: 'Enter a search term'),
                    onChanged: (text) => model.updateValue(text),
                  ),
                  RaisedButton(
                    child: Icon(Icons.search),
                    onPressed: () => model.navigationToView(context),
                  ),
                ],
              )
            )
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
