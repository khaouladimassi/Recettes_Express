import 'dart:math';
import 'dart:ui';
import 'package:apps/searchpage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sweep_animation_button/sweep_animation_button.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:audioplayers/audioplayers.dart';

import 'splash.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}







/* 

class FoodDetail3 extends StatefulWidget {
  const FoodDetail3({super.key});

  @override
  State<FoodDetail3> createState() => _FoodDetail3State();
}

class _FoodDetail3State extends State<FoodDetail3> {
  bool isFavorite = false;
  final String favoriteKey = 'favorite_icon_color';
  final String lastColoredDateKey = 'last_colored_date';

  @override
  void initState() {
    super.initState();
    loadFavoriteStatus();
  }

  void loadFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = prefs.getBool(favoriteKey) ?? false;
    });
  }

  @override
  void dispose() {
    super.dispose();
    saveFavoriteStatus();
  }

  void saveFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(favoriteKey, isFavorite);
    if (isFavorite) {
      prefs.setString(lastColoredDateKey, DateTime.now().toString());
    }
  }

  void toggleFavoriteStatus() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/pasta1.jpg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white70,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green[300],
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 250,
            bottom: 0,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: lastColoredDateKey ==
                                      DateTime.now().toString().split(' ')[0]
                                  ? Colors.red
                                  : Colors.green[300],
                              size: 40,
                            ),
                            onPressed: toggleFavoriteStatus,
                          ),
                          SizedBox(
                            width: 280,
                          ),
                          Image(
                            image: AssetImage("assets/personne.png"),
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 14, 30, 0),
                      child: Center(
                        child: Text(
                          'Spaghetti à l\'Italienne',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Color(0xFFE57373),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Center(
                        child: Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                3,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.green[200],
                                  size: 15,
                                ),
                              ),
                            ),
                            Wrap(
                              children: List.generate(
                                1,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.grey[400],
                                  size: 15,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '3.5',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 110),
                            Text(
                              '1354',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 9),
                            Text(
                              'commentaires',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                      child: Text(
                        'Une sauce à spaghetti saine préparée en moins de 20 minutes, génial!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                        child: Wrap(
                          children: [
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 183, 183),
                                // Couleur verte du cadre
                                borderRadius: BorderRadius.circular(
                                    5), // Coins arrondis du cadre
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 3, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/knife1.png"),
                                            height: 65,
                                            width: 65,
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              '10 min ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              'Préparation ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 19, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/fire.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 3, 0, 0),
                                            child: Text(
                                              ' 739 Kcal/p',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 1,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          34, 18, 0, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image: AssetImage("assets/pot.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '15 min cuisson',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 18, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/cost.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '37DT',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[200],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 24,
                            ), // Button padding
                          ),
                          child: Text(
                            'Découvrir plus',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class FoodDetail4 extends StatefulWidget {
  const FoodDetail4({super.key});

  @override
  State<FoodDetail4> createState() => _FoodDetail4State();
}

class _FoodDetail4State extends State<FoodDetail4> {
  bool isFavorite = false;
  final String favoriteKey = 'favorite_icon_color';
  final String lastColoredDateKey = 'last_colored_date';

  @override
  void initState() {
    super.initState();
    loadFavoriteStatus();
  }

  void loadFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = prefs.getBool(favoriteKey) ?? false;
    });
  }

  @override
  void dispose() {
    super.dispose();
    saveFavoriteStatus();
  }

  void saveFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(favoriteKey, isFavorite);
    if (isFavorite) {
      prefs.setString(lastColoredDateKey, DateTime.now().toString());
    }
  }

  void toggleFavoriteStatus() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/sucré.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white70,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green[300],
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 250,
            bottom: 0,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: lastColoredDateKey ==
                                      DateTime.now().toString().split(' ')[0]
                                  ? Colors.red
                                  : Colors.green[300],
                              size: 40,
                            ),
                            onPressed: toggleFavoriteStatus,
                          ),
                          SizedBox(
                            width: 280,
                          ),
                          Image(
                            image: AssetImage("assets/personne.png"),
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 14, 30, 0),
                      child: Center(
                        child: Text(
                          'Yogourt avec granola',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Color(0xFFE57373),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Center(
                        child: Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                3,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.green[200],
                                  size: 15,
                                ),
                              ),
                            ),
                            Wrap(
                              children: List.generate(
                                1,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.grey[400],
                                  size: 15,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '10.6',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 110),
                            Text(
                              '210',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 9),
                            Text(
                              'commentaires',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                      child: Text(
                        'Rien de mieux qu\'un petit plaisir rafraîchissant facile à préparer pour agrémenter une chaude journée d\'été!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                        child: Wrap(
                          children: [
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.yellow[200],
                                // Couleur verte du cadre
                                borderRadius: BorderRadius.circular(
                                    5), // Coins arrondis du cadre
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 3, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/knife1.png"),
                                            height: 65,
                                            width: 65,
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              '10 min ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              'Préparation ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 19, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/fire.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 3, 0, 0),
                                            child: Text(
                                              ' 207 Kcal/p',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 1,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          34, 18, 0, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image: AssetImage("assets/pot.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '20 min cuisson',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 18, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/cost.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '15DT',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[200],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 24,
                            ), // Button padding
                          ),
                          child: Text(
                            'Découvrir plus',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class FoodDetail5 extends StatefulWidget {
  const FoodDetail5({super.key});

  @override
  State<FoodDetail5> createState() => _FoodDetail5State();
}

class _FoodDetail5State extends State<FoodDetail5> {
  bool isFavorite = false;
  final String favoriteKey = 'favorite_icon_color';
  final String lastColoredDateKey = 'last_colored_date';

  @override
  void initState() {
    super.initState();
    loadFavoriteStatus();
  }

  void loadFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = prefs.getBool(favoriteKey) ?? false;
    });
  }

  @override
  void dispose() {
    super.dispose();
    saveFavoriteStatus();
  }

  void saveFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(favoriteKey, isFavorite);
    if (isFavorite) {
      prefs.setString(lastColoredDateKey, DateTime.now().toString());
    }
  }

  void toggleFavoriteStatus() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/roz.jpg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white70,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green[300],
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 250,
            bottom: 0,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: lastColoredDateKey ==
                                      DateTime.now().toString().split(' ')[0]
                                  ? Colors.red
                                  : Colors.green[300],
                              size: 40,
                            ),
                            onPressed: toggleFavoriteStatus,
                          ),
                          SizedBox(
                            width: 280,
                          ),
                          Image(
                            image: AssetImage("assets/personne.png"),
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 14, 30, 0),
                      child: Center(
                        child: Text(
                          'Riz aux légumes',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Color(0xFFE57373),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Center(
                        child: Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                1,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.green[200],
                                  size: 15,
                                ),
                              ),
                            ),
                            Wrap(
                              children: List.generate(
                                3,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.grey[400],
                                  size: 15,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '2.8',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 110),
                            Text(
                              '1050',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 9),
                            Text(
                              'commentaires',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                      child: Text(
                        'Riche, savoureux et vitaminé, ce riz aux légumes est la preuve incontestée qu’on peut être bien rassasié avec une recette végé.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                        child: Wrap(
                          children: [
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 183, 183),

                                // Couleur verte du cadre
                                borderRadius: BorderRadius.circular(
                                    5), // Coins arrondis du cadre
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 3, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/knife1.png"),
                                            height: 65,
                                            width: 65,
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              '15 min ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              'Préparation ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 19, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/fire.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 3, 0, 0),
                                            child: Text(
                                              '401 Kcal/p',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 1,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          34, 18, 0, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image: AssetImage("assets/pot.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '25 min cuisson',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 18, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/cost.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '15DT',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[200],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 24,
                            ), // Button padding
                          ),
                          child: Text(
                            'Découvrir plus',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class FoodDetail6 extends StatefulWidget {
  const FoodDetail6({super.key});

  @override
  State<FoodDetail6> createState() => _FoodDetail6State();
}

class _FoodDetail6State extends State<FoodDetail6> {
  bool isFavorite = false;
  final String favoriteKey = 'favorite_icon_color';
  final String lastColoredDateKey = 'last_colored_date';

  @override
  void initState() {
    super.initState();
    loadFavoriteStatus();
  }

  void loadFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isFavorite = prefs.getBool(favoriteKey) ?? false;
    });
  }

  @override
  void dispose() {
    super.dispose();
    saveFavoriteStatus();
  }

  void saveFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(favoriteKey, isFavorite);
    if (isFavorite) {
      prefs.setString(lastColoredDateKey, DateTime.now().toString());
    }
  }

  void toggleFavoriteStatus() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/cookies.jpg"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 20,
            right: 20,
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white70,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.green[300],
                    ),
                    onPressed: () {
                      Navigator.pop(context); // Go back to the previous screen
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 250,
            bottom: 0,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: lastColoredDateKey ==
                                      DateTime.now().toString().split(' ')[0]
                                  ? Colors.red
                                  : Colors.green[300],
                              size: 40,
                            ),
                            onPressed: toggleFavoriteStatus,
                          ),
                          SizedBox(
                            width: 280,
                          ),
                          Image(
                            image: AssetImage("assets/personne.png"),
                            height: 50,
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 14, 30, 0),
                      child: Center(
                        child: Text(
                          'Cookies',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            color: Color(0xFFE57373),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Center(
                        child: Row(
                          children: [
                            Wrap(
                              children: List.generate(
                                1,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.green[200],
                                  size: 15,
                                ),
                              ),
                            ),
                            Wrap(
                              children: List.generate(
                                3,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.grey[400],
                                  size: 15,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '5.1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 110),
                            Text(
                              '1820',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 9),
                            Text(
                              'commentaires',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                      child: Text(
                        'Le meilleur que le cookie peut vous offrir !',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    SizedBox(height: 17),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                        child: Wrap(
                          children: [
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.brown[200],

                                // Couleur verte du cadre
                                borderRadius: BorderRadius.circular(
                                    5), // Coins arrondis du cadre
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 15, 3, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/knife1.png"),
                                            height: 65,
                                            width: 65,
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              '15 min ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 0, 0),
                                            child: Text(
                                              'Préparation ',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 0.4,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 19, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/fire.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 3, 0, 0),
                                            child: Text(
                                              '502 Kcal/p',
                                              style: TextStyle(
                                                fontSize: 15.5,
                                                letterSpacing: 1,
                                                color: Colors.black87,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          34, 18, 0, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image: AssetImage("assets/pot.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '8 min cuisson',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          28, 18, 5, 0),
                                      child: Column(
                                        children: [
                                          Image(
                                            image:
                                                AssetImage("assets/cost.png"),
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox(height: 14),
                                          Text(
                                            '10DT',
                                            style: TextStyle(
                                              fontSize: 16,
                                              letterSpacing: 1,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[200],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 24,
                            ), // Button padding
                          ),
                          child: Text(
                            'Découvrir plus',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Ingredient> ingredients = [
  Ingredient(name: 'Poulet(escalope)', quantity: 2, price: 2.99, calories: 50),
  Ingredient(name: 'Tomate', quantity: 2, price: 3.49, calories: 100),
  Ingredient(name: 'Avocat', quantity: 1, price: 1.99, calories: 70),
  Ingredient(
      name: 'poingnées Salade(Mélange)',
      quantity: 4,
      price: 1.99,
      calories: 70),
];

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<String> saladSteps = [
    "Couper le poulet en petits morceaux.",
    "Couper les avocats en dés.",
    "Mélanger le poulet et les avocats dans un bol.",
    "Ajouter de la laitue et des tomates cerises.",
    "Préparer la vinaigrette avec de l'huile d'olive, du vinaigre balsamique, du sel et du poivre.",
    "Verser la vinaigrette sur la salade et mélanger délicatement.",
    "Saupoudrer de graines de sésame et servir."
  ];

  final List<Duration> stepDurations = [
    Duration(minutes: 5),
    Duration(minutes: 3),
    Duration(minutes: 2),
    Duration(minutes: 1),
    Duration(minutes: 2),
    Duration(minutes: 1),
    Duration(minutes: 2),
  ];

  int selectedStepIndex = -1;

  get stepStartTime => null;

  get currentTime => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: CustomPaint(
              painter: _ClockPainter(
                // Instanciation de votre CustomPainter
                currentTime: currentTime,
                stepStartTime: stepStartTime,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: saladSteps.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: selectedStepIndex == index
                          ? Colors.grey[400]!
                          : Colors.green[200],
                      radius: 25,
                      child: Text(
                        selectedStepIndex == index
                            ? '${stepDurations[index].inMinutes} min'
                            : 'E ${index + 1}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(saladSteps[index]),
                    onTap: () {
                      setState(() {
                        if (selectedStepIndex == index) {
                          selectedStepIndex = -1;
                        } else {
                          selectedStepIndex = index;
                        }
                      });
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ClockPainter extends CustomPainter {
  final DateTime?
      currentTime; //Cette variable représente l'heure actuelle du système au moment où l'horloge est dessinée
  final DateTime?
      stepStartTime; //Cette variable représente le moment où une étape spécifique a commencé.

  _ClockPainter({this.currentTime, this.stepStartTime});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 3;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.black38;

    // Draw clock circle
    canvas.drawCircle(center, radius, paint);

    // Draw hour hand
    /*  final hourAngle =
        (360 / 12) * (currentTime!.hour % 12 + currentTime!.minute / 60);
    final hourHandLength = radius * 0.4;
    final hourHandX =
        center.dx + hourHandLength * cos(_degreesToRadians(hourAngle - 90));
    final hourHandY =
        center.dy + hourHandLength * sin(_degreesToRadians(hourAngle - 90));
    final hourHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.grey[200]!;
    canvas.drawLine(center, Offset(hourHandX, hourHandY), hourHandPaint); */

    // Draw minute hand
    final minuteAngle = (360 / 60) * currentTime!.minute;
    final minuteHandLength = radius * 0.6;
    final minuteHandX = center.dx +
        minuteHandLength * cos(_degreesToRadians(minuteAngle - 115));
    final minuteHandY =
        center.dy + minuteHandLength * sin(_degreesToRadians(minuteAngle + 60));
    final minuteHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..color = Colors.grey[300]!;
    canvas.drawLine(center, Offset(minuteHandX, minuteHandY), minuteHandPaint);

    // Draw second hand
    /* final secondAngle = (360 / 60) * currentTime!.second;
    final secondHandLength = radius * 0.8;
    final secondHandX =
        center.dx + secondHandLength * cos(_degreesToRadians(secondAngle - 90));
    final secondHandY =
        center.dy + secondHandLength * sin(_degreesToRadians(secondAngle - 90));
    final secondHandPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..color = Colors.grey[400]!;
    canvas.drawLine(center, Offset(secondHandX, secondHandY), secondHandPaint); */
  }

  // Helper function to convert degrees to radians
  double _degreesToRadians(double degrees) {
    return degrees * pi / 180;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> searchOptions = [
    'Quels sont les ingrédients dans ton frigo ?',
    'As-tu des allergies alimentaires ?',
    'Possèdes-tu des robots de cuisine ?',
    'Suis-tu un régime alimentaire spécifique? ',
    'Quel est ton budget  ?',
    'Quelle est la quantité de calories souhaitée pour tes repas ?',
    'Quel type de cuisine préfères-tu ?',
    'Quelle est la saison actuelle ?',
    'Quel événement prépares-tu ?',
    'À quelle heure de la journée souhaites-tu cuisiner ? ',
    'Quel type de repas recherches-tu ? ',
  ];

  List<List<dynamic>> subLists = [
    [
      'Tomate',
      'Oignon',
      'Ail',
      'Poivre',
      'Sel',
      'Lait',
      'Beurre',
      'Farine',
      'Sucre'
    ],
    [
      'Arachides',
      'Fruits à coque (noix, amandes, noisettes, etc.)',
      'Œufs',
      'Lait et produits laitiers',
      'Poisson',
      'Crustacés (crevettes, crabes, homards, etc.)',
      'Soja',
      'Blé',
      'gluten',
      'Sésame',
      'Sulfites (utilisés comme conservateurs dans certains aliments)'
    ],
    [
      'Mixeur',
      'Multi cuiseur',
      'Robot pâtissier',
      'Robot blender',
      'Hachoir électrique',
      'Batteur électrique'
    ],
    [
      'végétarisme',
      'végétalisme',
      'véganisme',
      'Sans lactose',
      'Sans gluten',
      'Cétogène',
      'sans sel'
    ],
    [],
    [''],
    [
      'Cuisine italienne',
      'Cuisine française',
      'Cuisine mexicaine',
      'Cuisine indienne',
      'Cuisine chinoise',
      'Cuisine japonaise',
      'Cuisine thaïlandais',
      'Cuisine méditerranéenne',
      'Cuisine grecque',
      'Cuisine espagnole',
      'Cuisine vietnamienne',
      'Cuisine brésilienne',
      'Cuisine américaine',
      'Cuisine marocaine',
      'Cuisine libanaise'
    ],
    ['Printemps', 'Été', 'Automne', 'Hiver'],
    [
      'Anniversaires ',
      'Mariages',
      'Réunions de famille',
      'Dîners romantiques',
      'Barbecues et grillades',
      'Pique-niques',
      'Evénements sportifs',
      'Ramadan'
    ],
    ['Petit-déjeuner', 'Brunch', 'Déjeuner', 'Goûter', 'Dîner', 'Souper'],
    ['Salé', 'Sucré', 'Équilibré', 'Végétarien', 'Rapide'],
  ];

  String budgetText = '';
  String? budgetDropdownValue;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  late List<List<bool>> selectionStates;

  @override
  void initState() {
    super.initState();

    selectionStates = List.generate(searchOptions.length,
        (index) => List.filled(subLists[index].length, false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: const Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: 8),
            Text('Recherche'),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/kitchen1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.7, sigmaY: 0.7),
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < searchOptions.length; i++)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            searchOptions[i],
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          if (4 == i) ...[
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      labelText: 'Budget',
                                      labelStyle:
                                          TextStyle(color: Colors.white),
                                    ),
                                    style: TextStyle(
                                      color: Colors
                                          .white, // Set the color of the input text
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        budgetText = value;
                                      });
                                    },
                                  ),
                                ),
                                DropdownButton<String>(
                                  value: budgetDropdownValue,
                                  items: ['USD', 'EUR', 'JPY', 'dinar']
                                      .map((String currency) {
                                    return DropdownMenuItem<String>(
                                      value: currency,
                                      child: Text(currency),
                                    );
                                  }).toList(),
                                  dropdownColor: Colors
                                      .black87, // Set the background color of the dropdown menu
                                  style: TextStyle(
                                    color: Colors.green[
                                        100], // Set the color of the items' text
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      budgetDropdownValue = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(subLists[i].length, (index) {
                                  if (i == 5 && index == 0) {
                                    return GestureDetector(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            '$_counter KCal',
                                            style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          GestureDetector(
                                            onTap: () {
                                              _incrementCounter();
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green[100],
                                              ),
                                              child: const Icon(Icons.add,
                                                  color: Colors.black45),
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          GestureDetector(
                                            onTap: () {
                                              _decrementCounter();
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.green[100],
                                              ),
                                              child: const Icon(Icons.remove,
                                                  color: Colors.black45),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            selectionStates[i][index] =
                                                !selectionStates[i][index];
                                          });
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: selectionStates[i]
                                                  [index]
                                              ? Colors.green[100]
                                              : Colors.grey[200],
                                          // Couleur de sélection
                                          foregroundColor: selectionStates[i]
                                                  [index]
                                              ? Colors.black54
                                              : Colors.black45,
                                          // Couleur du texte de sélection
                                        ),
                                        child: Text(
                                          subLists[i][index].toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                }),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    Container(
                      alignment: Alignment.center,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen[300],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.done),
                            iconSize: 24,
                            color: Colors.lightGreen[700],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FavoritesPage(recipeName: 'Recipe Name Here'),
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

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 780,
              child: Image.asset(
                'assets/spices.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: Container(
                color: Colors.black12.withOpacity(0.2),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 0.0, 70.0, 0.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.width * 0.6,
                      child: Image.asset(
                        'assets/logo1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 40, 20, 0),
                    child: LoginForm(),
                  ), // Add the login form here
                ],
              ),
            ),
          ),
        ],
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
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
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FavoritesPage(recipeName: 'Recipe Name Here'),
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

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              'Bonjour',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Changer la couleur du texte en blanc
                letterSpacing: 3,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Numéro de téléphone ou Email',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Mot de passe',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Place your login logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF840D0D),
              // Couleur du bouton
              foregroundColor: Colors.white, // Couleur du texte du bouton
            ),
            child: Text(
              'Se connecter',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Vous n'avez pas de compte ? ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountPage()),
                  );
                },
                child: Text(
                  "Créer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 890,
              child: Image.asset(
                'assets/spices.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: Container(
                color: Colors.black12.withOpacity(0.2),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(0.0),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 0.0, 70.0, 0.0),
                    child: Container(
                      width: 250,
                      height: 250,
                      child: Image.asset(
                        'assets/logo1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  RegistrationForm(), // Add the registration form here
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            obscureText: true,
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Nom',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextFormField(
            obscureText: true,
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Mot de passe',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextFormField(
            obscureText: true,
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Adresse Email',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 25),
          SizedBox(
            height: 80,
            child: Theme(
              data: ThemeData(
                canvasColor: Colors.black54, // Change the color of the dropdown
              ),
              child: DropdownButtonFormField<String>(
                value: 'utilisateur_normal',
                items: [
                  DropdownMenuItem(
                    value: 'utilisateur_normal',
                    child: Text(
                      'Utilisateur normal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'chef',
                    child: Text(
                      'Chef',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'nutritionniste',
                    child: Text(
                      'Nutritionniste',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
                onChanged: (value) {
                  // TODO: Update the user type
                },
                decoration: InputDecoration(
                  labelText: 'Type d\'utilisateur',
                  labelStyle: TextStyle(
                      color: Colors
                          .white), // Changer la couleur du texte du label en blanc
                  filled: true,
                  fillColor: Colors
                      .transparent, // Couleur de remplissage du champ de texte transparente
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .white), // Changer la couleur de la bordure en blanc
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .white), // Changer la couleur de la bordure en blanc
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF840D0D),
              // Couleur du bouton
              foregroundColor: Colors.white, // Couleur du texte du bouton
            ),
            onPressed: () {
              // TODO: Implement the registration logic
            },
            child: Text('S\'inscrire'),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Center(
              child: Text(
                'Avez-vous un compte?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CreateAccountForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FavoritesPage extends StatelessWidget {
  final String recipeName;

  FavoritesPage({required this.recipeName}); // Corrected the constructor name

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
      body: Center(
        child: Text(
          recipeName,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
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
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingListPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  const ShoppingListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: const Row(
          children: [
            Icon(Icons.shopping_cart),
            SizedBox(width: 8),
            Text('Liste d\'achats'),
          ],
        ),
      ),
      body: const Center(
        child: Text('Contenu de la page de la liste d\'achats'),
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          FavoritesPage(recipeName: 'Recipe Name Here')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

/* import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Circular Countdown Timer Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Circular Countdown Timer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _duration = 60;
  final CountDownController _controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: CircularCountDownTimer(
          // Countdown duration in Seconds.
          duration: _duration,

          // Countdown initial elapsed Duration in Seconds.
          initialDuration: 0,

          // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
          controller: _controller,

          // Width of the Countdown Widget.
          width: MediaQuery.of(context).size.width / 2,

          // Height of the Countdown Widget.
          height: MediaQuery.of(context).size.height / 2,

          // Ring Color for Countdown Widget.
          ringColor: Colors.grey[300]!,

          // Ring Gradient for Countdown Widget.
          ringGradient: null,

          // Filling Color for Countdown Widget.
          fillColor: Colors.purpleAccent[100]!,

          // Filling Gradient for Countdown Widget.
          fillGradient: null,

          // Background Color for Countdown Widget.
          backgroundColor: Colors.purple[500],

          // Background Gradient for Countdown Widget.
          backgroundGradient: null,

          // Border Thickness of the Countdown Ring.
          strokeWidth: 20.0,

          // Begin and end contours with a flat edge and no extension.
          strokeCap: StrokeCap.round,

          // Text Style for Countdown Text.
          textStyle: const TextStyle(
            fontSize: 33.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

          // Format for the Countdown Text.
          textFormat: CountdownTextFormat.S,

          // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
          isReverse: false,

          // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
          isReverseAnimation: false,

          // Handles visibility of the Countdown Text.
          isTimerTextShown: true,

          // Handles the timer start.
          autoStart: false,

          // This Callback will execute when the Countdown Starts.
          onStart: () {
            // Here, do whatever you want
            debugPrint('Countdown Started');
          },

          // This Callback will execute when the Countdown Ends.
          onComplete: () {
            // Here, do whatever you want
            debugPrint('Countdown Ended');
          },

          // This Callback will execute when the Countdown Changes.
          onChange: (String timeStamp) {
            // Here, do whatever you want
            debugPrint('Countdown Changed $timeStamp');
          },

          /* 
            * Function to format the text.
            * Allows you to format the current duration to any String.
            * It also provides the default function in case you want to format specific moments
              as in reverse when reaching '0' show 'GO', and for the rest of the instances follow 
              the default behavior.
          */
          timeFormatterFunction: (defaultFormatterFunction, duration) {
            if (duration.inSeconds == 0) {
              // only format for '0'
              return "Start";
            } else {
              // other durations by it's default format
              return Function.apply(defaultFormatterFunction, [duration]);
            }
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          _button(
            title: "Start",
            onPressed: () => _controller.start(),
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Pause",
            onPressed: () => _controller.pause(),
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Resume",
            onPressed: () => _controller.resume(),
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Restart",
            onPressed: () => _controller.restart(duration: _duration),
          ),
        ],
      ),
    );
  }

  Widget _button({required String title, VoidCallback? onPressed}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
} */
 */