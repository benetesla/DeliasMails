import 'package:flutter/material.dart';
import 'package:food/components/main_drawer.dart';
import 'package:food/screen/categories_screen.dart';
import 'package:food/screen/favorite_screen.dart';

import '../models/meal.dart';

class TabScreen extends StatefulWidget {
  List<Meal> favoriteMeals;
  TabScreen({super.key, required this.favoriteMeals});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    {
      'title': 'Lista de Categorias',
      'screen': const CategoriesScreen(),
    },
    {
      'title': 'Meus Favoritos',
      'screen': const FavoriteScreen(
        favoriteMeals: [],
      ),
    },
  ];
  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Vamos cozinhar?'),
        ),
        body: Center(
          child: _screens[_selectedScreenIndex]['screen'] as Widget,
        ),
        drawer: const MainDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          currentIndex: _selectedScreenIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favoritos',
            ),
          ],
        ));
  }
}
