// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:food/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final Category category;
  const CategoriesMealsScreen(this.category);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(category.title)),
      ),
      body: const Center(
        child: Text('Receitas por Categoria'),
      ),
    );
  }
}
