import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Refeição'),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            meal.imageUrl,
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              'Ingredientes',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 200,
            child: ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).badgeTheme.backgroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(meal.ingredients[index]),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text(
              'Passos',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            height: 200,
            child: ListView.builder(
              itemCount: meal.steps.length,
              itemBuilder: (ctx, index) => Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text(meal.steps[index]),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
