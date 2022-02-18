// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import './models/game.dart';
import './models/category.dart';

const DUMMY_CATEGORIES = const [
  Category(id: 'c1', title: 'Action', color: Colors.purple),
  Category(id: 'c2', title: 'RPG', color: Colors.amber),
  Category(id: 'c3', title: 'Sports', color: Colors.blue),
  Category(id: 'c4', title: 'FPS', color: Colors.orange),
  Category(id: 'c5', title: 'Logic', color: Colors.red),
  Category(id: 'c6', title: 'Adventure', color: Colors.teal),
  Category(id: 'c7', title: 'Sci-fi', color: Colors.indigo),
];

const DUMMY_GAMES = const [
  Game(
      id: 'g1',
      categories: ['c1', 'c2'],
      title: 'title1',
      imageUrl:
          'https://static.posters.cz/image/750/plakaty/gears-of-war-4-game-cover-i30650.jpg',
      tags: ['aa', 'bb'],
      releaseYear: 2005,
      status: Status.finished,
      isReleased: true,
      isPolishLanguage: true),
  Game(
      id: 'g2',
      categories: ['c3', 'c4'],
      title: 'title2',
      imageUrl:
          'https://static.posters.cz/image/750/plakaty/gears-of-war-4-game-cover-i30650.jpg',
      tags: ['cc', 'dd'],
      releaseYear: 2011,
      status: Status.abandoned,
      isReleased: true,
      isPolishLanguage: false),
  Game(
      id: 'g3',
      categories: ['c5', 'c6'],
      title: 'title3',
      imageUrl:
          'https://static.posters.cz/image/750/plakaty/gears-of-war-4-game-cover-i30650.jpg',
      tags: ['aa', 'gg'],
      releaseYear: 2012,
      status: Status.finished,
      isReleased: false,
      isPolishLanguage: false),
  Game(
      id: 'g4',
      categories: ['c1', 'c3'],
      title: 'title4',
      imageUrl:
          'https://static.posters.cz/image/750/plakaty/gears-of-war-4-game-cover-i30650.jpg',
      tags: ['hh', 'ff'],
      releaseYear: 2015,
      status: Status.inProgress,
      isReleased: false,
      isPolishLanguage: true),
  Game(
      id: 'g5',
      categories: ['c7', 'c2'],
      title: 'title5',
      imageUrl:
          'https://static.posters.cz/image/750/plakaty/gears-of-war-4-game-cover-i30650.jpg',
      tags: ['bb', 'cc'],
      releaseYear: 2021,
      status: Status.wishList,
      isReleased: true,
      isPolishLanguage: true),
];
