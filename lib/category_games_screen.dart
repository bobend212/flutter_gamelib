// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CategoryGamesScreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoryGamesScreen({required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('cat: ${categoryTitle}')),
        body: Center(
          child: Text('Games by cat.'),
        ));
  }
}
