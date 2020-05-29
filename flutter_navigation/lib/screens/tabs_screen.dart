import 'package:flutter/material.dart';
import '../wedgets/main_drawer.dart';

import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories',},
    {'page': FavoritesScreen(), 'title': 'Your Favorite',},
  ];

  int _selectPageIndex = 0;

  void _selectPage(int index){
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        items: [
          BottomNavigationBarItem( icon: Icon(Icons.category), title: Text('Category'),backgroundColor: Theme.of(context).primaryColor ),
          BottomNavigationBarItem( icon: Icon(Icons.favorite), title: Text('Favorite'),backgroundColor: Theme.of(context).primaryColor ),
        ],
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectPageIndex,
        type: BottomNavigationBarType.shifting ,
      ),
    );
  }
}