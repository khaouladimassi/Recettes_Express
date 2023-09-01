import 'package:flutter/material.dart';
import 'acceuil.dart';
import 'favoritespage.dart';
import 'profilepage.dart';
import 'searchpage.dart';

List<Map<String, dynamic>> achats = [
  {
    "image": "assets/tomato.png",
    "titre": 'tomate',
    "prix": "4.0",
    "quantité": "2kilo",
    "isChecked": false, // État initial de la case à cocher
  },
  {
    "image": 'assets/oignon.png',
    "titre": 'oignon',
    "prix": "2.0",
    "quantité": "1kilo",
    "isChecked": false, // État initial de la case à cocher
  },
  {
    "image": "assets/orange.png",
    "titre": "orange",
    "prix": "5.0",
    "quantité": "1kilo",
    "isChecked": false, // État initial de la case à cocher
  },
  {
    "image": "assets/strawberry.png",
    "titre": "fraise",
    "prix": "7.0",
    "quantité": "2kilo",
    "isChecked": false, // État initial de la case à cocher
  },
  {
    "image": 'assets/bitrave.png',
    "titre": 'bettrave',
    "prix": "1.0",
    "quantité": "1kilo",
    "isChecked": false, // État initial de la case à cocher
  },
  {
    "image": "assets/banane.png",
    "titre": "banane",
    "prix": "8.0",
    "quantité": "1kilo",
    "isChecked": false, // État initial de la case à cocher
  },
];

class ShoppingListPage extends StatefulWidget {
  @override
  _ShoppingListPageState createState() => _ShoppingListPageState();
}

class _ShoppingListPageState extends State<ShoppingListPage> {
  bool isChecked = false;
  Map<int, bool> isCheckedMap = {};
  double prixTotal = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Row(
          children: [
            Icon(Icons.shopping_cart),
            SizedBox(width: 8),
            Text('Liste d\'achats'),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 30, 60, 25),
              child: ElevatedButton(
                onPressed: () {
                  // Code à exécuter lorsque le bouton est pressé
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[50],
                  padding: EdgeInsets.fromLTRB(25, 10, 0, 10),
                ),
                child: Row(
                  children: [
                    Text(
                      ' Ajouter d\'autres produits',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      ' +',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: achats.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.fromLTRB(25, 10, 30, 15),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.grey,
                                ),
                              ),
                              child: Row(children: [
                                Image.asset(
                                  achats[index]['image'],
                                  height: 70,
                                  width: 90,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      achats[index]['titre'],
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          achats[index]['prix'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          achats[index]['quantité'],
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(55, 5, 5, 5),
                                  child: Checkbox(
                                    value: isCheckedMap[index] ?? false,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isCheckedMap[index] = value ?? false;
                                        if (value ?? false) {
                                          prixTotal += double.parse(
                                              achats[index]['prix']);
                                        } else {
                                          prixTotal -= double.parse(
                                              achats[index]['prix']);
                                        }
                                      });
                                    },
                                    fillColor: MaterialStateColor.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.selected)) {
                                          return Colors
                                              .green; // Couleur lorsque la case est cochée
                                        }
                                        return Colors
                                            .white; // Couleur lorsque la case n'est pas cochée.
                                      },
                                    ),
                                  ),
                                ),
                              ])));
                    })),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Prix total : $prixTotal DT',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFE57373),
                  ),
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
              color: Colors.green,
              iconSize: 31,
              onPressed: () {
                /*  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                ); */
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
                  MaterialPageRoute(builder: (context) => FavoritesPage(foodlist: [],)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
