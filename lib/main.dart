// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:food/screen/categories_meals_screen.dart';
import 'package:food/screen/categories_screen.dart';
import 'package:food/screen/meal_detail_screen.dart';
import 'package:food/utils/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              displayLarge: const TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      //home: const CategoriesScreen(),
      routes: {
        AppRoute.home: (ctx) => const CategoriesScreen(),
        AppRoute.categoryMeals: (ctx) => CategoriesMealsScreen(),
        AppRoute.mealDetail: (ctx) => const MealDetailScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return const CategoriesScreen();
          },
        );
      },

      debugShowCheckedModeBanner: false,
    );
  }
}
