import 'package:apps/acceuil.dart';
import 'package:apps/favoritespage.dart';
import 'package:apps/ingredients.dart';
import 'package:apps/allergies.dart';
import 'package:apps/profilepage.dart';
import 'package:apps/recipesearchresultspage.dart';
import 'package:apps/regime.dart';
import 'package:apps/robot.dart';
import 'package:apps/saison.dart';
import 'package:apps/shoppinglistpage.dart';
import 'package:apps/type_cuisine.dart';

import 'package:flutter/material.dart';

import 'evenement.dart';
import 'heure_journee.dart';
import 'type_repas.dart';

class SearchPage extends StatefulWidget {
  final List<Map<String, dynamic>> foodlist;

  const SearchPage(
      {Key? key,
      required this.foodlist,
      required void Function() navigateToSearchPage})
      : super(key: key);
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // Méthode pour rechercher des recettes en fonction des mots-clés
  List<Map<String, dynamic>> searchRecipes(List<String> keywords) {
    final searchResults = widget.foodlist.where((foodlist) {
      final titre = foodlist["titre"].toString().toLowerCase();

      bool matchesAnyKeyword = false;
      for (final kw in keywords) {
        if (titre.contains(kw.toLowerCase())) {
          matchesAnyKeyword = true;
          break;
        }
      }

      return matchesAnyKeyword;
    }).toList();

    print('Search Results: $searchResults');
    return searchResults;
  }

  late TextEditingController _textEditingController;

  // Method to gather selected values and keywords
  List<String> gatherKeywords() {
    List<String> keywords = [];

    // Gather keywords from text fields
    for (int i = 0; i < searchOptions.length; i++) {
      if (i != 4 && i != 5 && i != 6) {
        keywords.addAll(selectedItemsList[i]);
      }
    }

    // Gather keyword from main search text field
    keywords.add(_textEditingController.text);

    // Remove empty keywords
    keywords.removeWhere((keyword) => keyword.isEmpty);

    print('Gathered Keywords: $keywords');
    return keywords;
  }

  List<Map<String, dynamic>> searchOptions = [
    {
      'question': 'Quels sont les ingrédients dans ton frigo ?',
      'icone': Icons.restaurant,
      'step': Ingredients()
    },
    {
      'question': 'As-tu des allergies alimentaires ?',
      'icone': Icons.warning,
      'step': Allergies()
    },
    {
      'question': 'Possèdes-tu des robots de cuisine ?',
      'icone': Icons.kitchen,
      'step': Robots()
    },
    {
      'question': 'Suis-tu un régime alimentaire spécifique? ',
      'icone': Icons.food_bank,
      'step': Regime()
    },
    {
      'question': 'Quel est ton budget  ?',
      'icone': Icons.attach_money,
      'Step': ''
    },
    {
      'question':
          'Quelle est la quantité de calories souhaitée pour tes repas ?',
      'icone': Icons.local_fire_department,
      'Step': ''
    },
    {
      'question': 'Quelle est la durée que vous recherchez ?',
      'icone': Icons.access_time,
      'Step': ''
    },
    {
      'question': 'Quel type de cuisine préfères-tu ?',
      'icone': Icons.flag,
      'step': TypeCuisine()
    },
    {
      'question': 'Quelle est la saison actuelle ?',
      'icone': Icons.beach_access,
      'step': Saison()
    },
    {
      'question': 'Quel événement prépares-tu ?',
      'icone': Icons.event,
      'step': Evenement()
    },
    {
      'question': 'À quelle heure de la journée souhaites-tu cuisiner ? ',
      'icone': Icons.wb_sunny,
      'step': HeureJournee()
    },
    {
      'question': 'Quel type de repas recherches-tu ? ',
      'icone': Icons.restaurant_menu,
      'step': TypeRepas()
    },
  ];

  String budgetText = '';
  String? budgetDropdownValue;

  @override
  void initState() {
    super.initState();
    print('Received Food List in SearchPage: ${widget.foodlist}');
    _textEditingController = TextEditingController();
  }

  List<List<String>> selectedItemsList = List.generate(
    12, // Number of options
    (index) => [], // Initialize with empty lists
  );

  void openSubList(int index) async {
    final selectedItems = await Navigator.push<List<String>>(
      context,
      MaterialPageRoute(
        builder: (context) => const Ingredients(),
      ),
    );

    if (selectedItems != null && selectedItems.isNotEmpty) {
      setState(() {
        selectedItemsList[index] = selectedItems; // Update selected items list
      });
    }
  }

  String selectedHours = '00h';
  String selectedMinutes = '00min';
  String selectedSeconds = '00s';

  List<String> selectedIngredients = [];
  int selectedCalories = 0;
  int selectedPrix = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            controller: _textEditingController,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              hintStyle: const TextStyle(color: Colors.white38),
              border: InputBorder.none,
              suffixIcon: InkWell(
                onTap: () {
                  final keywords = gatherKeywords();
                  if (keywords.isNotEmpty) {
                    final searchResults = searchRecipes(keywords);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RecipeSearchResultsPage(
                          results: searchResults,
                          foodlist: [],
                        ),
                      ),
                    );
                  }
                },
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (var searchData in searchOptions)
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            searchData['question'],
                            style: const TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 30, 17),
                              child: Row(
                                children: [
                                  if (searchData['icone'] !=
                                      Icons.access_time) ...[
                                    Expanded(
                                      child: TextFormField(
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                        controller: TextEditingController(),
                                        decoration: InputDecoration(
                                          labelStyle: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 168, 164, 164),
                                          ),
                                          fillColor: Colors.transparent,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.white38,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.white,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ] else ...[
                                    DropdownButton<String>(
                                      dropdownColor: Colors.black54,
                                      value: selectedHours,
                                      items: [
                                        '00h',
                                        '01h',
                                        '02h',
                                        '03h',
                                        '04h',
                                        '05h',
                                        '06h',
                                        '07h',
                                        '08h',
                                        '09h',
                                        '10h',
                                        '11h',
                                        '12h',
                                        '13h',
                                        '14h',
                                        '15h',
                                        '16h',
                                        '17h',
                                        '18h',
                                        '19h',
                                        '20h',
                                        '21h',
                                        '22h',
                                        '23h'
                                      ].map((String currency) {
                                        return DropdownMenuItem<String>(
                                          value: currency,
                                          child: Text(
                                            currency,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedHours =
                                              value!; // Utilize the chosen value
                                        });
                                      },
                                    ),
                                    SizedBox(width: 25),
                                    DropdownButton<String>(
                                      dropdownColor: Colors.black54,
                                      value: selectedMinutes,
                                      items: [
                                        '00min',
                                        '01min',
                                        '02min',
                                        '03min',
                                        '04min',
                                        '05min',
                                        '06min',
                                        '07min',
                                        '08min',
                                        '09min',
                                        '10min',
                                        '11min',
                                        '12min',
                                        '13min',
                                        '14min',
                                        '15min',
                                        '16min',
                                        '17min',
                                        '18min',
                                        '19min',
                                        '20min',
                                        '21min',
                                        '22min',
                                        '23min',
                                        '24min',
                                        '25min',
                                        '26min',
                                        '27min',
                                        '28min',
                                        '29min',
                                        '30min',
                                        '31min',
                                        '32min',
                                        '33min',
                                        '34min',
                                        '35min',
                                        '36min',
                                        '37min',
                                        '38min',
                                        '39min',
                                        '40min',
                                        '41min',
                                        '42min',
                                        '43min',
                                        '44min',
                                        '45min',
                                        '46min',
                                        '47min',
                                        '48min',
                                        '49min',
                                        '50min',
                                        '51min',
                                        '52min',
                                        '53min',
                                        '54min',
                                        '55min',
                                        '56min',
                                        '57min',
                                        '58min',
                                        '59min',
                                      ].map((String currency) {
                                        return DropdownMenuItem<String>(
                                          value: currency,
                                          child: Text(
                                            currency,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedMinutes = value!;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 20),
                                    DropdownButton<String>(
                                      dropdownColor: Colors.black54,
                                      value: selectedSeconds,
                                      items: [
                                        '00s',
                                        '01s',
                                        '02s',
                                        '03s',
                                        '04s',
                                        '05s',
                                        '06s',
                                        '07s',
                                        '08s',
                                        '09s',
                                        '10s',
                                        '11s',
                                        '12s',
                                        '13s',
                                        '14s',
                                        '15s',
                                        '16s',
                                        '17s',
                                        '18s',
                                        '19s',
                                        '20s',
                                        '21s',
                                        '22s',
                                        '23s',
                                        '24s',
                                        '25s',
                                        '26s',
                                        '27s',
                                        '28s',
                                        '29s',
                                        '30s',
                                        '31s',
                                        '32s',
                                        '33s',
                                        '34s',
                                        '35s',
                                        '36s',
                                        '37s',
                                        '38s',
                                        '39s',
                                        '40s',
                                        '41s',
                                        '42s',
                                        '43s',
                                        '44s',
                                        '45s',
                                        '46s',
                                        '47s',
                                        '48s',
                                        '49s',
                                        '50s',
                                        '51s',
                                        '52s',
                                        '53s',
                                        '54s',
                                        '55s',
                                        '56s',
                                        '57s',
                                        '58s',
                                        '59s',
                                      ].map((String currency) {
                                        return DropdownMenuItem<String>(
                                          value: currency,
                                          child: Text(
                                            currency,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedSeconds =
                                              value!; // Utilize the chosen value
                                        });
                                      },
                                    ),
                                  ],
                                  const SizedBox(width: 5),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(40, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () {
                                        // Utilisation de la valeur de 'step' pour ouvrir la nouvelle page appropriée

                                        if (searchData['step'] != null &&
                                            searchData['step'] is Widget) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  searchData['step'],
                                            ),
                                          );
                                        }
                                      },
                                      child: Icon(
                                        searchData['icone'],
                                        color: const Color.fromARGB(
                                            198, 236, 162, 162),
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ],
                              ))
                        ]),
                ]),
          ),
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
              color: Colors.green,
              iconSize: 30,
              onPressed: () {
                /* Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SearchPage(foodlist: [])),
                ); */
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  ShoppingListPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FavoritesPage(foodlist: [],
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
