import 'package:flutter/material.dart';
import 'package:meals/models/meals.dart';
import 'package:meals/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {

final List<Meal> favoriteMeal ;
FavoritesScreen(this.favoriteMeal);

  @override
  Widget build(BuildContext context) {
    
      if (favoriteMeal.isEmpty) {
        return Center(
        child: Text(
          'You have no favorites yet , start adding now!',
        ),
      );
      }else{
       return ListView.builder(
          itemCount: favoriteMeal.length,
          itemBuilder: (context, index) {
            return MealItem(
              id: favoriteMeal[index].id,
              title: favoriteMeal[index].title,
              imageUrl: favoriteMeal[index].imageUrl,
              duration: favoriteMeal[index].duration,
              complexity: favoriteMeal[index].complexity,
              affordability: favoriteMeal[index].affordability,
              //removeItem: removeMeal,
            );
          });
      }
          

  }
}