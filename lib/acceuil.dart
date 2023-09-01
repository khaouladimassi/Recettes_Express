import 'dart:async';

import 'package:apps/favoritespage.dart';
import 'package:apps/fooddetail.dart';
import 'package:apps/profilepage.dart';
import 'package:apps/searchpage.dart';
import 'package:apps/shoppinglistpage.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class AcceuilPage extends StatefulWidget {
  const AcceuilPage({Key? key}) : super(key: key);

  @override
  _AcceuilPageState createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  List<Map<String, dynamic>> foodlist = [
    {
      "image": "assets/11.jpg",
      "titre": "salade au poulet et avocat",
      "heart": 3,
      "rating": "4.5",
      "commentaires": "1287 commentaires",
      "niveau": "simple",
      "prix": "35DT",
      "temps": "12min",
      "description":
          "Cette salade offre une combinaison parfaite de saveurs et de textures.",
      "preparation": "20min Préparation",
      "cuisson": "12min cuisson",
      "caloris": "551 Kcal/p",
      "etapes":
          "1-Coupez le poulet en dés.\n\n 2-Tranchez l'avocat et préparez les légumes.\n\n3-Disposez la laitue dans un bol.\n\n4-Ajoutez les ingrédients préparés sur la laitue.\n\n5-Assaisonnez avec sel et poivre.\n\n6-Versez la vinaigrette.\n\n7-Mélangez doucement.\n\n8-Servez et dégustez !",
      "ingredients": [
        {
          "nom": "poulet",
          "quantité": "2",
          "prix": "10DT",
          "calories": "150 Kcal"
        },
        {
          "nom": "avocat",
          "quantité": "1",
          "prix": "5DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'tomate',
          "quantité": "3",
          "prix": "2DT",
          "calories": "25 Kcal"
        },
        {
          "nom": 'salade(mélange)',
          "quantité": "2",
          "prix": "2DT",
          "calories": "50 Kcal"
        },
        {"nom": '', "quantité": "", "prix": "", "calories": ""},
      ],
    },
    {
      "image": "assets/granola1.jpg",
      "titre": "yogourt, fruits et granola",
      "heart": 3,
      "rating": "2.4",
      "commentaires": "214 commentaires",
      "niveau": "simple",
      "prix": "30DT",
      "temps": "7min",
      "description":
          "Cette coupe fruitée et protéinée est parfaite pour composer un déjeuner sain et délicieux.",
      "preparation": "10min Préparation",
      "cuisson": "7min cuisson",
      "caloris": "370 Kcal/p",
      "etapes":
          "1-Prenez un bol.\n\n2-Versez une portion de yaourt nature ou à la vanille.\n\n3-Ajoutez des morceaux de fruits frais par-dessus.\n\n4-Saupoudrez une poignée de granola sur les fruits.\n\n5-Voilà, c'est prêt à déguster !",
      "ingredients": [
        {
          "nom": "granola",
          "quantité": "1 tasse",
          "prix": "5DT",
          "calories": "150 Kcal",
          "": "icone.achat"
        },
        {
          "nom": "yogourt grec à la vanille",
          "quantité": "500 m",
          "prix": "3,5DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'framboises',
          "quantité": "160 ml ",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
      ],
    },
    {
      "image": "assets/pasta1.jpg",
      "titre": "Spaghetti à l'Italienne ",
      "heart": 2,
      "rating": "3.5",
      "commentaires": "1354 commentaires",
      "niveau": "simple",
      "prix": "50DT",
      "temps": "45min",
      "description":
          'Une sauce à spaghetti saine préparée en moins de 20 minutes, génial!',
      "preparation": "10min Préparation",
      "cuisson": "15min cuisson",
      "caloris": "739 Kcal/p",
      "etapes":
          "1- Faites bouillir une grande casserole d'eau salée.\n\n2-Ajoutez les spaghettis et faites-les cuire jusqu'à ce qu'ils soient al dente.\n\n3-Pendant ce temps, dans une poêle, faites chauffer un peu d'huile d'olive à feu moyen.\n\n4-Ajoutez l'ail émincé et faites-le sauter jusqu'à ce qu'il soit parfumé.\n\n5-Versez la sauce tomate dans la poêle et laissez mijoter à feu doux.\n\n6-Une fois les spaghettis cuits, égouttez-les et ajoutez-les dans la poêle avec la sauce tomate.\n\n7-Mélangez les spaghettis avec la sauce pour les enrober uniformément.\n\n8-Assaisonnez avec du sel et du poivre selon votre goût.\n\n9-Si vous en avez, ajoutez des feuilles de basilic frais pour plus de saveur.\n\n10-Servez les spaghettis dans des assiettes individuelles.",
      "ingredients": [
        {
          "nom": "spaghetti",
          "quantité": "340g",
          "prix": "5DT",
          "calories": "20 Kcal"
        },
        {
          "nom": "sauce tomate",
          "quantité": "1 boîte de 398 ml",
          "prix": "3.5DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'tomates en dés aux épices',
          "quantité": "1 boîte de 540 ml ",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
      ],
    },
    {
      "image": "assets/sucré.png",
      "titre": "glace au fraise ",
      "heart": 1,
      "rating": "10.6",
      "commentaires": "110commentaires",
      "niveau": "simple",
      "prix": "15Dt",
      "temps": "20min",
      "description":
          'Rien de mieux qu\'un petit plaisir rafraîchissant facile à préparer pour agrémenter une chaude journée d\'été!',
      "preparation": "20min Préparation",
      "cuisson": "15min cuisson",
      "caloris": "207 Kcal/p",
      "etapes":
          "1-Lavez et équeutez les fraises.\n\n2-Coupez les fraises en morceaux.\n\n3-Placez les morceaux de fraises dans un mixeur.\n\n4-Ajoutez une quantité appropriée de sucre selon votre préférence sucrée.\n\n5-Mixez les fraises jusqu'à obtenir une purée lisse.\n\n6-Dans un bol séparé, fouettez légèrement la crème épaisse jusqu'à ce qu'elle épaississe légèrement.\n\n7-Incorporez la purée de fraises à la crème fouettée. Mélangez doucement jusqu'à obtenir un mélange homogène.\n\n8-Versez le mélange dans un récipient allant au congélateur.\n\n9-Couvrez le récipient et placez-le au congélateur pendant au moins 4 heures, en remuant toutes les heures pour éviter la formation de cristaux de glace.\n\n10-Après le temps de congélation, votre glace à la fraise est prête à être dégustée !",
      "ingredients": [
        {
          "nom": " lait concentré sucré",
          "quantité": "300 ml",
          "prix": "5DT",
          "calories": "20 Kcal"
        },
        {
          "nom": "cacao",
          "quantité": "125 ml",
          "prix": "3.5DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'vanille',
          "quantité": "5 ml  ",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
        {
          "nom": " barre au chocolat et caramel",
          "quantité": "10 carrés",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
      ]
    },
    {
      "image": "assets/roz.jpg",
      "titre": "Riz aux légumes et poulet ",
      "heart": 1,
      "rating": "2.8",
      "commentaires": "1287 commentaires",
      "niveau": "simple",
      "prix": "15DT",
      "temps": "20min",
      "description":
          'Riche, savoureux et vitaminé, ce riz aux légumes est la preuve incontestée qu’on peut être bien rassasié avec une recette végé.',
      "preparation": "20min Préparation",
      "cuisson": "20min cuisson",
      "caloris": "207 Kcal/p",
      "etapes":
          "1-Faites chauffer un peu d'huile d'olive dans une poêle à feu moyen.\n\n2-Ajoutez les dés de poulet et faites-les cuire jusqu'à ce qu'ils soient dorés et cuits à l'intérieur.\n\n3-Si vous le souhaitez, ajoutez de l'ail émincé pour plus de saveur.\n\n4-Ajoutez les légumes coupés dans la poêle et faites-les sauter jusqu'à ce qu'ils soient tendres.\n\n5-Assaisonnez avec du sel et du poivre selon votre goût.\n\n6-Si vous aimez, ajoutez une touche de sauce soja pour rehausser les saveurs.\n\n7-Ajoutez le riz cuit dans la poêle et mélangez bien pour que les ingrédients soient bien répartis.\n\n8-Laissez cuire pendant quelques minutes jusqu'à ce que le riz soit bien chaud.\n\n9-Goûtez et ajustez l'assaisonnement si nécessaire.\n\n10-Servez votre riz aux légumes et poulet dans des assiettes individuelles.",
      "ingredients": [
        {
          "nom": " riz basmat",
          "quantité": "250 ml (1 tasse)",
          "prix": "5DT",
          "calories": "20 Kcal"
        },
        {
          "nom": "huile de sésame",
          "quantité": "30 ml (2 c. à soupe)",
          "prix": "3.5DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'mélange de légumes',
          "quantité": " 250 ml (1 tasse) ",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
      ]
    },
    {
      "image": "assets/cookies.jpg",
      "titre": "Cookies ",
      "heart": 2,
      "rating": "5.1",
      "commentaires": "1050 commentaires",
      "niveau": "simple",
      "prix": "10DT",
      "temps": "40min",
      "description": 'Le meilleur que le cookie peut vous offrir !',
      "cuisson": "40min cuisson",
      "caloris": "502 Kcal/p",
      "preparation": "15min Préparation",
      "etapes":
          "1-Préchauffez le four à la température recommandée.\n\n2-Dans un bol, battez le beurre ramolli et le sucre jusqu'à obtenir un mélange crémeux.\n\n3-Ajoutez un œuf à ce mélange et mélangez bien.\n\n4-Incorporez la farine, la levure chimique et une pincée de sel. Mélangez jusqu'à obtenir une pâte homogène.\n\n5-Si vous le souhaitez, ajoutez des pépites de chocolat ou des noix hachées à la pâte pour plus de saveur et de texture.\n\n6-Formez de petites boules de pâte et placez-les sur une plaque de cuisson, en laissant de l'espace entre elles.\n\n7-Aplatissez légèrement les boules pour former des cookies.\n\n8-Enfournez la plaque de cuisson dans le four préchauffé et faites cuire les cookies jusqu'à ce qu'ils soient dorés sur les bords.\n\n9-Une fois cuits, sortez-les du four et laissez-les refroidir sur une grille.\n\n10-Dès qu'ils ont refroidi, vos cookies sont prêts à être dégustés !",
      "ingredients": [
        {"nom": "oeuf", "quantité": "1", "prix": "250", "calories": "20 Kcal"},
        {
          "nom": "sucre",
          "quantité": "80g",
          "prix": "3.5DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'farine de blé',
          "quantité": "200g",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'beurre',
          "quantité": "150g",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
        {
          "nom": 'sac levure chimique',
          "quantité": "1 sac",
          "prix": "2DT",
          "calories": "100 Kcal"
        },
      ]
    },
  ];
  void navigateToSearchPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchPage(
          foodlist: foodlist,
          navigateToSearchPage: navigateToSearchPage, // Pass the function
        ),
      ),
    );
  }

  List<Map<String, dynamic>> searchRecipes(String keyword) {
    return foodlist.where((recipe) {
      final titre = recipe['titre'].toString().toLowerCase();

      // Use exact string matching for filtering
      return titre == keyword.toLowerCase();
    }).toList();
  }

  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 200;

  /*  int generateRandomTipIndex(index) {
    Random random = Random();
    return random.nextInt(foodlist[index]["astuces"].length);
  } */

  List<PageController> _pageControllers =
      List.generate(6, (_) => PageController());

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Row(
          children: [
            Icon(Icons.home),
            SizedBox(width: 8),
            Text('Accueil'),
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
        padding: EdgeInsets.all(9),
        child: Column(
          children: [
            Container(
              height: 350,
              child: PageView.builder(
                controller: pageController,
                itemCount: foodlist.length,
                itemBuilder: (context, position) {
                  return Column(
                    children: [
                      _buildPageItem(context, position),
                    ],
                  );
                  //return _buildPageItem(context, index);
                },
              ),
            ),
            DotsIndicator(
              dotsCount: foodlist.length,
              position: _currPageValue,
              decorator: DotsDecorator(
                activeColor: Colors.green[400],
                size: Size.square(9.0),
                activeSize: Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
            SizedBox(height: 15),
            AstucesWidget(astuces: astuces),
          ],
          /*  SizedBox(height: 45),
            Text(
              'Astuce pour aujourd\'hui :',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              foodlist[index]['astuces'],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ) */

          /* ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.stars,
                  color: Colors.green[100],
                  size: 35,
                ),
              ), */
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.green[50],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.green,
              iconSize: 31,
              onPressed: () {
                /*  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(
                      foodlist: foodlist,
                      navigateToSearchPage: navigateToSearchPage,
                    ),
                  ),
                ); */
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(
                      foodlist: foodlist,
                      navigateToSearchPage: navigateToSearchPage,
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
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

  Widget _buildPageItem(BuildContext context, int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
      //changeIndex(index);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
      //changeIndex(index);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
      //changeIndex(index);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
      //changeIndex(index);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(left: 10, right: 10, top: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  index < foodlist.length ? foodlist[index]["image"] : '',
                ),
              ),
            ),
          ),
          _buildPageContent(index),
        ],
      ),
    );
  }

  Widget _buildPageContent(int index) {
    if (index == 0) {
      return buildImage1Widget(0);
    } else if (index == 1) {
      return buildImage1Widget(1);
    } else if (index == 2) {
      return buildImage1Widget(2);
    } else if (index == 3) {
      return buildImage1Widget(3);
    } else if (index == 4) {
      return buildImage1Widget(4);
    } else if (index == 5) {
      return buildImage1Widget(5);
    }
    return Container();
  }

  Widget buildImage1Widget(int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FoodDetail(
                      fooddata: foodlist[index],
                    )),
          );
        },
        child: Container(
          height: 120,
          margin: EdgeInsets.only(left: 20, right: 30, bottom: 0, top: 175),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(6, 0),
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      foodlist[index]["titre"],
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[200],
                      ),
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Wrap(
                          children: List.generate(
                            foodlist[index]["heart"],
                            (index) => Icon(
                              Icons.favorite,
                              color: Colors.green[100],
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
                        SizedBox(width: 8),
                        Text(foodlist[index]["rating"]),
                        SizedBox(width: 30),
                        Text(foodlist[index]["commentaires"]),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle_sharp, color: Colors.yellowAccent),
                        Text(foodlist[index]["niveau"]),
                        SizedBox(width: 24),
                        Icon(Icons.attach_money, color: Colors.green),
                        Text(foodlist[index]["prix"]),
                        SizedBox(width: 24),
                        Icon(Icons.access_time, color: Colors.grey),
                        Text(foodlist[index]["temps"]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> astuces = [
  "Utilisez des herbes fraîches pour donner plus de saveur à vos plats.",
  "Préparez vos ingrédients à l'avance pour gagner du temps lors de la cuisson.",
  "Évitez de trop saler vos plats en utilisant des alternatives comme les épices et les agrumes.",
  "Essayez de nouvelles combinaisons d'ingrédients pour créer des saveurs uniques.",
  "Utilisez des ustensiles de cuisine de qualité pour obtenir de meilleurs résultats.",
];

class AstucesWidget extends StatefulWidget {
  final List<String> astuces;

  const AstucesWidget({required this.astuces});

  @override
  _AstucesWidgetState createState() => _AstucesWidgetState();
}

class _AstucesWidgetState extends State<AstucesWidget> {
  int currentTipIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // Start a timer to change the tip every 5 seconds
    Timer.periodic(Duration(seconds: 6), (timer) {
      setState(() {
        currentTipIndex = (currentTipIndex + 1) % widget.astuces.length;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lightbulb,
                    color: Color.fromARGB(255, 213, 242, 216)),
                SizedBox(width: 10),
                Text(
                  'Astuce pour aujourd\'hui :',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              widget.astuces[currentTipIndex], // Use the current tip
              style: TextStyle(
                fontSize: 26,
                color: Colors.green[200],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



/* class FoodDetail extends StatefulWidget {
  @override
  State<FoodDetail> createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  bool isFavorite = false;
  bool isshopping = false;
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
      isFavorite = prefs.getBool(favoriteKey) ?? false;
      isshopping = prefs.getBool(shoppingKey) ?? false;
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
    prefs.setBool(shoppingKey, isshopping);

    if (isFavorite) {
      prefs.setString(lastColoredDateKey, DateTime.now().toString());
    }
    if (isshopping) {
      prefs.setString(lastColoredDateKey, DateTime.now().toString());
    }
  }

  void toggleFavoriteStatus() {
    setState(() {
      isFavorite = !isFavorite;
      isshopping = !isshopping;
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
                  image: AssetImage("assets/11.jpg"),
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
                          'Salade au poulet et avocat',
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
                              '4.5',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 110),
                            Text(
                              '1287',
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
                      padding: const EdgeInsets.fromLTRB(29, 10, 10, 0),
                      child: Text(
                        ' Cette salade offre une combinaison parfaite de saveurs et de textures.',
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
                                              '20 min ',
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
                                              '551 Kcal/p',
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
                                            '12 min cuisson',
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
                                            '35DT',
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
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: buildDataTable(ingredients),
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

  DataTable buildDataTable(List<Ingredient> ingredients) {
    return DataTable(
      columns: [
        DataColumn(label: Text(' Nom d\'ingrédients')),
        DataColumn(label: Text('Quantités')),
        DataColumn(label: Text('Prix')),
        DataColumn(label: Text('Calories')),
        DataColumn(label: Text('')),
      ],
      rows: ingredients.map((ingredient) {
        return DataRow(
          cells: [
            DataCell(Text(ingredient.name)),
            DataCell(Text(ingredient.quantity.toString())),
            DataCell(Text('\$${ingredient.price.toStringAsFixed(2)}')),
            DataCell(Text(ingredient.calories.toString())),
            DataCell(
              IconButton(
                icon: Icon(
                  isshopping ? Icons.shopping_cart : Icons.done,
                  color: lastColoredDateKey ==
                          DateTime.now().toString().split(' ')[0]
                      ? Colors.red
                      : Colors.green[300],
                  size: 40,
                ),
                onPressed: toggleFavoriteStatus,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}

class Ingredient {
  String name;
  double quantity;
  double price;
  int calories;

  Ingredient({
    required this.name,
    required this.quantity,
    required this.price,
    required this.calories,
  });
}

class FoodDetail2 extends StatefulWidget {
  @override
  State<FoodDetail2> createState() => _FoodDetail2State();
}

class _FoodDetail2State extends State<FoodDetail2> {
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
                  image: AssetImage("assets/granola1.jpg"),
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
                                2,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.green[200],
                                  size: 15,
                                ),
                              ),
                            ),
                            Wrap(
                              children: List.generate(
                                2,
                                (index) => Icon(
                                  Icons.favorite,
                                  color: Colors.grey[400],
                                  size: 15,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '4',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                color: Colors.black38,
                              ),
                            ),
                            SizedBox(width: 110),
                            Text(
                              '234',
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
                        'Cette coupe fruitée et protéinée est parfaite pour composer un déjeuner sain et délicieux.',
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
                                color: Colors.brown[100],
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
                                              ' 370 Kcal/p',
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
                                            '5 min cuisson',
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
                                            '30DT',
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
} */