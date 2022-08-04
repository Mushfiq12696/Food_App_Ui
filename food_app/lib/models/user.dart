import 'package:food_app/models/food.dart';
import 'package:food_app/models/order.dart';
import 'package:food_app/models/restaurant.dart';

class User {
  final String? name;
  final List<Order>? order;
  final List<Order>? cart;
  User({
    this.cart,
    this.name,
    this.order,
  });
}
