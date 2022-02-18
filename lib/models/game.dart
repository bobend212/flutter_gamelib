enum Status { finished, wishList, inProgress, abandoned }

class Game {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> tags;
  final int releaseYear;
  final Status status;
  final bool isReleased;
  final bool isPolishLanguage;

  const Game(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.tags,
      required this.releaseYear,
      required this.status,
      required this.isReleased,
      required this.isPolishLanguage});
}
