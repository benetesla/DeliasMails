// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:food/models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(category.title)),
      ),
      body: Center(
        child: Text('Receitas por Categoria ${category.id}'),
      ),
    );
  }
}
