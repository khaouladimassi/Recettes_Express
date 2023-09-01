import 'dart:ui';

import 'package:apps/acceuil.dart';
import 'package:apps/favoritespage.dart';
import 'package:apps/loginform.dart';
import 'package:apps/profil.dart';
import 'package:apps/searchpage.dart';
import 'package:apps/shoppinglistpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Row(
          children: [
            InkWell(
              onTap: () {
                // Mettez ici la navigation vers la page du profil
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Profil(), // Assurez-vous que Profil() est votre classe de page de profil
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(253, 1, 0, 1),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle, // Pour créer un cercle
                    color: Colors.white, // Couleur de fond du cercle
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person, // Icône de personne
                      size: 20, // Taille de l'icône
                      color: Colors.green, // Couleur de l'icône
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 780,
              child: Image.asset(
                'assets/bg.jpg',
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
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AcceuilPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(
                      foodlist: [],
                      navigateToSearchPage: () {},
                    ),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingListPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.green,
              iconSize: 31,
              onPressed: () {
                /* Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                ); */
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FavoritesPage(
                            foodlist: [],
                          )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
