// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:gamelib_app/models/game.dart';

class GameItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int releaseYear;
  final Status status;

  const GameItem(
      {required this.title,
      required this.imageUrl,
      required this.releaseYear,
      required this.status});

  String get statusText {
    switch (status) {
      case Status.abandoned:
        return 'Abandoned';
      case Status.finished:
        return 'Finished';
      case Status.inProgress:
        return 'In Progress';
      case Status.wishList:
        return 'Wish List';
      default:
        return 'unknown';
    }
  }

  void selectGame() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectGame,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(imageUrl,
                        height: 150,
                        //width: double.infinity,
                        fit: BoxFit.cover),
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 20),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                  Text(releaseYear.toString()),
                  Text(statusText)
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
