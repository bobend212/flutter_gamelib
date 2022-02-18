import 'package:flutter/material.dart';

class GameDetailScreen extends StatelessWidget {
  static const routeName = '/game-detail';

  @override
  Widget build(BuildContext context) {
    final gameId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text('${gameId}')),
      body: Center(
        child: Text('game id: ${gameId}'),
      ),
    );
  }
}
