import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FoodDetail extends StatefulWidget {
  const FoodDetail({Key? key, this.fooddata}) : super(key: key);

  final dynamic fooddata;
  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  bool isShopping = false;
  final String favoriteKey = 'favorite_icon_color';
  final String shoppingKey = 'shopping_cart_icon_color';
  final String lastColoredDateKey = 'last_colored_date';

  @override
  void initState() {
    super.initState();
    loadFavoriteStatus();
  }

  void loadFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Load the favorite status for the current recipe
      isFavorite =
          prefs.getBool(favoriteKey + widget.fooddata['titre']) ?? false;
    });
  }

  @override
  void dispose() {
    super.dispose();
    saveFavoriteStatus();
  }

  void saveFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Save the favorite status for the current recipe
    prefs.setBool(favoriteKey + widget.fooddata['titre'], isFavorite);
  }

  void toggleFavoriteStatus() {
    setState(() {
      isFavorite = !isFavorite;

      if (isFavorite) {
        favoriteRecipes.add(widget.fooddata['titre']);
      } else {
        favoriteRecipes.remove(widget.fooddata['titre']);
      }

      saveFavoriteStatus(); // Save the updated favorite status
    });
  }

  bool isFavorite = false;
  List<String> favoriteRecipes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.fooddata["image"]),
              ),
            ),
          ),
        ),
        Positioned(
          top: 26,
          left: 18,
          right: 20,
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.green),
                  onPressed: () {
                    Navigator.pop(context);
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
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite
                                ? Colors.red
                                : Colors.green[300], // Change color here
                            size: 40,
                          ),
                          onPressed: toggleFavoriteStatus,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.68,
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
                        widget.fooddata['titre'],
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
                              4,
                              (index) => Icon(
                                Icons.favorite,
                                color: Colors.green[200],
                                size: 15,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            widget.fooddata['rating'] ?? 'Aucune évaluation',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(width: 110),
                          Text(
                            widget.fooddata['commentaires'] ??
                                'Aucune évaluation',
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
                    padding: const EdgeInsets.fromLTRB(29, 10, 10, 0),
                    child: Text(
                      widget.fooddata['description'] ?? 'Aucune évaluation',
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
                              color: Colors.green[200],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 3, 0),
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
                                            widget.fooddata['preparation'] ??
                                                'Aucune évaluation',
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
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 19, 5, 0),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/fire.png"),
                                          height: 50,
                                          width: 50,
                                        ),
                                        SizedBox(height: 14),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 3, 0, 0),
                                          child: Text(
                                            widget.fooddata['caloris'] ??
                                                'Aucune évaluation',
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
                                    padding:
                                        const EdgeInsets.fromLTRB(34, 18, 0, 0),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/pot.png"),
                                          height: 50,
                                          width: 50,
                                        ),
                                        SizedBox(height: 14),
                                        Text(
                                          widget.fooddata['cuisson'] ??
                                              'Aucune évaluation',
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
                                    padding:
                                        const EdgeInsets.fromLTRB(28, 18, 5, 0),
                                    child: Column(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/cost.png"),
                                          height: 50,
                                          width: 50,
                                        ),
                                        SizedBox(height: 14),
                                        Text(
                                          widget.fooddata['prix'] ??
                                              'Aucune évaluation',
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
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: DataTable(
                              columns: [
                                DataColumn(label: Text('Ingrédient')),
                                DataColumn(label: Text('Quantité')),
                                DataColumn(label: Text('Prix')),
                                DataColumn(label: Text('Calories')),
                              ],
                              rows: List<DataRow>.generate(
                                widget.fooddata["ingredients"].length,
                                (index) {
                                  String nomIngredient = widget
                                      .fooddata["ingredients"][index]["nom"];
                                  String quantiteIngredient =
                                      widget.fooddata["ingredients"][index]
                                          ["quantité"];
                                  String prixIngredient = widget
                                      .fooddata["ingredients"][index]["prix"];
                                  String caloriesIngredient =
                                      widget.fooddata["ingredients"][index]
                                          ["calories"];

                                  return DataRow(
                                    cells: [
                                      DataCell(Text(nomIngredient)),
                                      DataCell(Text(quantiteIngredient)),
                                      DataCell(Text(prixIngredient)),
                                      DataCell(Text(caloriesIngredient)),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Text(
                                'Etapes',
                                style: TextStyle(
                                  color: Color.fromARGB(222, 236, 162, 162),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Text(
                                widget.fooddata['etapes'],
                                style: TextStyle(
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),

                          /* Center(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                              child: ElevatedButton(
                                onPressed: () {
                                  /*  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details()),
                          ); */
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
                          ), */
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
