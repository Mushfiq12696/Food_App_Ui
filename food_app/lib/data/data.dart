//Food

import 'package:food_app/models/food.dart';
import 'package:food_app/models/order.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/models/user.dart';

final _burrito =
    Food(imgUrl: 'assets/images/burrito.jpg', name: 'Burrito', price: 5.5);
final _pizza =
    Food(imgUrl: 'assets/images/pizza.jpg', name: 'Pizza', price: 7.5);
final _steak =
    Food(imgUrl: 'assets/images/steak.jpg', name: 'Steak', price: 10.0);
final _burger =
    Food(imgUrl: 'assets/images/burger.jpg', name: 'Burger', price: 5.5);
final _pancakes =
    Food(imgUrl: 'assets/images/pancakes.jpg', name: 'Pancakes', price: 4.5);
final _salmon =
    Food(imgUrl: 'assets/images/salmon.jpg', name: 'Salmon', price: 5.5);

//Restaurant

final restaurant1 = Restaurant(
  adress: 'Mohammadpur',
  img: 'assets/images/restaurant1.jpg',
  name: 'TakeOut',
  ratting: 4.5,
  distanece: '0.1km',
  menu: [_burger, _burrito, _pancakes, _steak, _pizza, _salmon],
);
final restaurant2 = Restaurant(
  adress: 'Dhanmondi',
  img: 'assets/images/restaurant2.jpg',
  name: ' Chillox',
  ratting: 4.4,
  distanece: '1.5km',
  menu: [_burger, _burrito, _pancakes, _steak, _pizza, _salmon],
);
final restaurant3 = Restaurant(
  adress: 'Mirpur',
  img: 'assets/images/restaurant4.jpg',
  name: 'Herfy',
  ratting: 4.5,
  distanece: '6.9km',
  menu: [_burger, _burrito, _pancakes, _steak, _pizza, _salmon],
);

final restaurant4 = Restaurant(
  adress: 'banani',
  img: 'assets/images/restaurant0.jpg',
  name: 'Steak House',
  ratting: 4.5,
  distanece: '8.5km',
  menu: [_burger, _burrito, _pancakes, _steak, _pizza, _salmon],
);

final restaurant5 = Restaurant(
  adress: 'Gulsha-2',
  img: 'assets/images/restaurant3.jpg',
  name: 'Gloriajeans',
  ratting: 4.5,
  distanece: '10.7km',
  menu: [_burger, _burrito, _pancakes, _steak, _pizza, _salmon],
);

final List<Restaurant> restaurants = [
  restaurant1,
  restaurant2,
  restaurant3,
  restaurant4,
  restaurant5
];

final currentUser = User(name: 'Mushfiq', order: [
  Order(
      date: '04/08/2022', food: _burger, quantity: 3, restaurant: restaurant2),
  Order(
      date: '03/08/2022', food: _burrito, quantity: 2, restaurant: restaurant1),
  Order(
      date: '02/08/2022',
      food: _pancakes,
      quantity: 1,
      restaurant: restaurant4),
  Order(date: '01/08/2022', food: _pizza, quantity: 2, restaurant: restaurant3),
  Order(
      date: '31/07/2022', food: _salmon, quantity: 3, restaurant: restaurant5),
], cart: [
  Order(
      date: '04/08/2022', food: _burger, quantity: 3, restaurant: restaurant2),
  Order(
      date: '03/08/2022', food: _burrito, quantity: 2, restaurant: restaurant1),
  Order(
      date: '02/08/2022',
      food: _pancakes,
      quantity: 1,
      restaurant: restaurant4),
  Order(date: '01/08/2022', food: _pizza, quantity: 2, restaurant: restaurant3),
  Order(
      date: '31/07/2022', food: _salmon, quantity: 3, restaurant: restaurant5),
]);
