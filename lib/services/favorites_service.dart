class FavoritesService {
  static final List<String> favorites = [];

  static void toggleFavorite(String fact) {
    if (favorites.contains(fact)) {
      favorites.remove(fact);
    } else {
      favorites.add(fact);
    }
  }

  static bool isFavorite(String fact) {
    return favorites.contains(fact);
  }
}