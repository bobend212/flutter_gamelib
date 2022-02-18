import 'package:flutter/material.dart';
import 'package:gamelib_app/screens/categories_screen.dart';
import 'package:gamelib_app/screens/category_games_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Games Library',
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Lora'),
      home: CategoriesScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        CategoryGamesScreen.routeName: (ctx) => CategoryGamesScreen(),
      },
    );
  }
}
