// ignore_for_file: use_key_in_widget_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:food/components/meal_item.dart';
import 'package:food/models/category.dart';

import '../data/dummy_data.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(category.title)),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryMeals.length,
          itemBuilder: (ctx, index) {
            return MealItem(categoryMeals[index]);
          },
        ),
      ),
    );
  }
}
