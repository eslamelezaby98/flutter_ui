import 'package:flutter/material.dart';
import 'package:meals/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        color: Theme.of(context).accentColor,
        child: Column(
          
          children: <Widget>[
            Container(
              height: 120,
              width: double.infinity,
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.centerLeft,
              color: Theme.of(context).primaryColor,
              child: Text(
                'Cooking Up!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).accentColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildListTile(
              Icons.restaurant,
              'Meals',
              () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            buildListTile(
              Icons.settings,
              'Filters',
              (){
                Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(IconData icon, String title, Function tapHandler) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoCondensed',
        ),
      ),
      onTap: tapHandler,
    );
  }
}
