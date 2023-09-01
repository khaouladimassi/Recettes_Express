import 'package:apps/acceuil.dart';
import 'package:apps/profilepage.dart';
import 'package:apps/searchpage.dart';
import 'package:apps/shoppinglistpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fooddetail.dart';

class FavoritesPage extends StatefulWidget {
  final List<Map<String, dynamic>> foodlist;
  const FavoritesPage({
    Key? key,
    required this.foodlist,
  }) : super(key: key);
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<Map<String, dynamic>> favorite = [
    {
      "image": 'assets/11.jpg',
      "titre": 'salade au poulet et avocat',
      "niveau": "simple",
      "prix": "35DT",
      "temps": "12min",
    },
    {
      "image": "assets/granola1.jpg",
      "titre": "yogourt, fruits et granola",
      "niveau": "simple",
      "prix": "30DT",
      "temps": "7min",
    },
  ];

  get foodlist => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: const Row(
          children: [
            Icon(Icons.favorite),
            SizedBox(width: 8),
            Text('Favoris'),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: favorite.length,
          itemBuilder: (context, index) {
            final recipeTitle = favorite[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetail(fooddata: recipeTitle),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(
                        recipeTitle['image'],
                        width: 140,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 3),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                          child: Text(
                            recipeTitle['titre'],
                            style: TextStyle(
                              color: const Color.fromARGB(255, 14, 13, 13),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(Icons.circle_sharp,
                                color: Colors.yellowAccent),
                            Text(
                              recipeTitle['niveau'],
                              style: TextStyle(
                                color: const Color.fromARGB(255, 14, 13, 13),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Icon(Icons.attach_money, color: Colors.green),
                            Text(
                              recipeTitle['prix'],
                              style: TextStyle(
                                color: const Color.fromARGB(255, 14, 13, 13),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.access_time, color: Colors.grey),
                            Text(
                              recipeTitle['temps'],
                              style: TextStyle(
                                color: const Color.fromARGB(255, 14, 13, 13),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AcceuilPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SearchPage(
                            foodlist: [],
                            navigateToSearchPage: () {},
                          )),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingListPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              color: Colors.green,
              iconSize: 31,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetail(
                      fooddata: null,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
