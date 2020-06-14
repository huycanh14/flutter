import 'package:flutter/material.dart';
import '../providers/product.dart';
import 'package:provider/provider.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {

  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Product>(context, listen: false);
    return Consumer<Product>(
      builder: (context, product, _) => ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: GridTile(
          child: GestureDetector(
            child: Image.network(product.imageUrl, fit: BoxFit.cover),
            onTap:(){
              Navigator.of(context).pushNamed(ProductDetailSreen.routeName, arguments: product.id);
            }
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
              icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border), 
              // label: child,
              onPressed: () {
                product.toggleFavoriteStatus();
              },
              color: Theme.of(context).accentColor
            ),
            title: Text(product.title, textAlign: TextAlign.center),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                
              },
              color: Theme.of(context).accentColor
            )
          ),
        ),
      )
    );
  }
}