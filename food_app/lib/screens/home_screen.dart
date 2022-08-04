import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/screens/recent_order.dart';
import 'package:food_app/screens/restaurant_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildRestaurant() {
    List<Widget> restaurantList = [];
    restaurants.forEach((Restaurant restaurant) {
      restaurantList.add(GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RestaurantScreen(
                restaurant: restaurant,
              )));
        },
        child: Container(
          margin: EdgeInsets.only(
            top: 5,
            bottom: 10,
            right: 20,
            left: 8,
          ),
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                    height: double.infinity,
                    width: 150,
                    fit: BoxFit.cover,
                    image: AssetImage('${restaurant.img}')),
              ),
              SizedBox(
                width: 200,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${restaurant.name}',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('${restaurant.adress}'),
                  Text('${restaurant.distanece}'),
                ],
              ),
            ],
          ),
        ),
      ));
    });
    return Column(
      children: restaurantList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.amber.shade800,
          title: Text('Food Delivery '),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              size: 25,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Cart(${currentUser.cart!.length})",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ]),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.close),
              ),
            ),
          ),
          RecentOrder(),
          SizedBox(
            height: 15,
          ),
          Text(
            'Near me Restaurant',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          _buildRestaurant(),
        ],
      ),
    );
  }
}
