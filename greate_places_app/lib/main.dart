import 'package:flutter/material.dart';
import 'package:greate_places_app/screens/add_place_screen.dart';
import './providers/great_place.dart';
import 'package:provider/provider.dart';

import './screens/places_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatePlace(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Greate Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceSreen.routerName: (cxt) => AddPlaceSreen()
        }
      ),
    );
  }
}

