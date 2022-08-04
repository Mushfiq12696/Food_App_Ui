import 'package:food_app/models/food.dart';

class Restaurant {
  final String? name;
  final String? img;
  final double? ratting;
  final String? adress;
  final String? distanece;
  final List<Food>? menu;

  Restaurant({
    this.adress,
    this.img,
    this.menu,
    this.name,
    this.ratting,
    this.distanece
  });
}
