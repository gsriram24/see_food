import 'package:flutter/foundation.dart';

class Meal {
  final int id;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  const Meal({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
  });
}
