import 'package:flutter/material.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';
import '../widgets/products_grid.dart';

enum FilterOptions {
  Favorites,
  All
}

class ProductsOverviewScreen extends StatefulWidget {

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selecteValue) {
              setState(() {
                if(selecteValue == FilterOptions.Favorites){
                 _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });
              
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem( child: Text('Only Favorites'), value: FilterOptions.Favorites ),
              PopupMenuItem( child: Text('Show all'), value: FilterOptions.All ),
            ]
          )
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}

