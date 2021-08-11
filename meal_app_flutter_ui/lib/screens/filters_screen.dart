import 'package:flutter/material.dart';
import 'package:meals/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = 'filters_screen';
  final Function saveFilter;
  final Map<String,bool> currentFilters ;
  FiltersScreen(this.currentFilters,this.saveFilter);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool isGlutenFree = false;
  bool isVegan = false;
  bool isVegetarian = false;
  bool isLactoseFree = false;

  @override
  initState(){
      isGlutenFree = widget.currentFilters['gluten'];
      isVegan = widget.currentFilters['vegan'];
      isVegetarian = widget.currentFilters['vegetarian'];
      isLactoseFree = widget.currentFilters['lactose'];
    super.initState();
  }

  Widget buildSwitchListTile(String title, String subtitle, bool currentValue,
      Function updateDateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: currentValue,
        onChanged: updateDateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          title: Text(
            'Filters',
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final selectFilters = {
                  'gluten': isGlutenFree,
                  'vegan': isVegan,
                  'vegetarian': isVegetarian,
                  'lactose': isLactoseFree,
                };
                widget.saveFilter(selectFilters);
              },
            ),
          ],
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Adjust Your Meal Selection.',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  buildSwitchListTile(
                      'Gluten-Free',
                      'Only include gluten-free meals.',
                      isGlutenFree, (newValue) {
                    setState(() {
                      isGlutenFree = newValue;
                    });
                  }),
                  buildSwitchListTile(
                      'Lactose-Free',
                      'Only include lactose-free meals.',
                      isLactoseFree, (newValue) {
                    setState(() {
                      isLactoseFree = newValue;
                    });
                  }),
                  buildSwitchListTile(
                      'Vegetarian-Free',
                      'Only include vegetarian-free meals.',
                      isVegetarian, (newValue) {
                    setState(() {
                      isVegetarian = newValue;
                    });
                  }),
                  buildSwitchListTile(
                      'Vegan-Free', 'Only include vegan-free meals.', isVegan,
                      (newValue) {
                    setState(() {
                      isVegan = newValue;
                    });
                  }),
                ],
              ),
            ),
          ],
        ));
  }
}
