import 'package:flutter/material.dart';
import '../wedgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters; 
  
  FiltersScreen(this.currentFilters,this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  void initState() { 
    _glutenFree = widget.currentFilters['gluten'];
    _vegetarian = widget.currentFilters['vegetarian'];
    _vegan = widget.currentFilters['vegane'];
    _lactoseFree = widget.currentFilters['lactose'];
    super.initState();
    
  }

  Widget _buildSwitchListTitle(String title, String description, bool currentValue, Function updateValue) {
    return SwitchListTile(
        title: Text(title),
        onChanged: updateValue,
        value: currentValue,
        subtitle: Text(description)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Filters'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.save), onPressed: (){
              final selectedFilters = {
                'gluten' : _glutenFree,
                'vegetarian' : _vegetarian,
                'vegane' : _vegan,
                'lactose' : _lactoseFree,
              };
              widget.saveFilters(selectedFilters);
            },)
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text('Adjust your meal selection.',
                  style: Theme.of(context).textTheme.title),
            ),
            Expanded(
                child: ListView(
              children: <Widget>[
                _buildSwitchListTitle('Gluten-free',
                    'Only include gluten-free meals.', _glutenFree, (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitchListTitle('Loctose-free',
                    'Onlt include loctose-free meals.', _lactoseFree, (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                _buildSwitchListTitle('vegetarian',
                    'Onlt include vegetarian meals.', _vegetarian, (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
                _buildSwitchListTitle('Vegan',
                    'Onlt include vegan meals.', _vegan, (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                }),
              ],
            ))
          ],
        ));
  }
}
