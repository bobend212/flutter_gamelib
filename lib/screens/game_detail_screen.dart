import 'package:flutter/material.dart';
import 'package:gamelib_app/dummy_data.dart';

class GameDetailScreen extends StatelessWidget {
  static const routeName = '/game-detail';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final gameId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedGame = DUMMY_GAMES.firstWhere((game) => game.id == gameId);
    return Scaffold(
      appBar: AppBar(title: Text('${selectedGame.title}')),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(selectedGame.releaseYear.toString()),
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedGame.imageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          buildSectionTitle(context, 'Tags'),
          Container(
            height: 100,
            width: 200,
            child: ListView.builder(
              itemCount: selectedGame.tags.length,
              itemBuilder: (ctx, index) => Card(
                color: Theme.of(context).colorScheme.background,
                child:
                    Text(selectedGame.tags[index], textAlign: TextAlign.center),
              ),
            ),
          ),
          Text('released: ${selectedGame.isReleased.toString()}'),
          Text('Polish language: ${selectedGame.isPolishLanguage.toString()}'),
        ]),
      ),
    );
  }
}
