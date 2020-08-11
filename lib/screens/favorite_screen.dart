import 'package:Meals/components/meal_item.dart';
import 'package:Meals/models/meal.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteleMeals;

  const FavoriteScreen(this.favoriteleMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteleMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma refeição foi marcada como favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteleMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteleMeals[index]);
        },
      );
    }
  }
}
