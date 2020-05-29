import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../wedgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  
  static const routeName = '/category-meals';

  final List<Meal> availableMeals;

  CategoryMealsScreen(this.availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {

  String categoryTitle;
  List<Meal> displayMeals;
  var _loadedInitData = false;
  
  @override
  void initState() { 
    
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if(!_loadedInitData){
      final routerArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
      final categoryId = routerArgs['id'];
      categoryTitle = routerArgs['title'];
      displayMeals = widget.availableMeals.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    
    super.didChangeDependencies();
  }

  void _removeMeals(String mealId) {
    setState(() {
      displayMeals.retainWhere((meal) => meal.id == mealId);
    });
  }
  @override
  Widget build(BuildContext context) {

    
     
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: displayMeals[index].id,
            title: displayMeals[index].title,
            imageUrl: displayMeals[index].imageUrl,
            duration: displayMeals[index].duration,
            affordability: displayMeals[index].affordability,
            complexity: displayMeals[index].complexity,
            removeItem: _removeMeals,
          );
        }, itemCount: displayMeals.length,
      ),
    );
  }
}