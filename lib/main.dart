import 'package:Meals/screens/categories_meals_screen.dart';
import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screen.dart'

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6:
                  TextStyle(fontSize: 20, fontFamily: 'Robotocondensed'))),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScrean(),
      },
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/alguma-coisa') {
      //     return null;
      //   } else if (settings.name == '/outra-coisa') {
      //     return null;
      //   } else {
      //     return MaterialPageRoute(builder: (_) {
      //       return CategoriesScreen();
      //     });
      //   }
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (_) {
      //       return CategoriesScreen();
      //     });
      // },
    );
  }
}
