import 'package:paw_pick/models/animal.dart';

class Favorites {
  static final Favorites _instance = Favorites._internal();
  List<Animal> favoriteAnimals = [];

  factory Favorites() {
    return _instance;
  }

  Favorites._internal();
}
