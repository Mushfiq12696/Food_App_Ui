import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurant.dart';

class Order {
  final Food? food;
  final Restaurant? restaurant;
  final int? quantity;
  final String? date;

  Order({
    this.date,
    this.food,
    this.quantity,
    this.restaurant
  });
}
