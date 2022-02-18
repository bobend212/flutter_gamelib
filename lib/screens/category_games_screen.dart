// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gamelib_app/widgets/game_item.dart';
import '../dummy_data.dart';

class CategoryGamesScreen extends StatelessWidget {
  static const routeName = '/category-games';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryGamesScreen({required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final categoryGames = DUMMY_GAMES.where((game) {
      return game.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text('${categoryTitle} games')),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return GameItem(
              title: categoryGames[index].title,
              imageUrl: categoryGames[index].imageUrl,
              releaseYear: categoryGames[index].releaseYear,
              status: categoryGames[index].status);
        },
        itemCount: categoryGames.length,
      ),
    );
  }
}
