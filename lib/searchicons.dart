/* import 'package:flutter/material.dart';

class SearchIcons extends StatefulWidget {
  final int subListIndex;

  const SearchIcons({Key? key, required this.subListIndex}) : super(key: key);

  @override
  State<SearchIcons> createState() => _SearchIconsState();
}

class _SearchIconsState extends State<SearchIcons> {
  List<Map<String, dynamic>> subLists = [
    
      {
        "ingredients": [
          {
            "image": "assets/tomato.png",
            "titre": 'tomate',
            "category": "légumes",
          },
          {
            "image": 'assets/oignon.png',
            "titre": 'oignon',
            "category": "légumes",
          },
          {
            "image": 'assets/ail.png',
            "titre": 'ail',
            "category": "légumes",
          },
          {
            "image": 'assets/carrots (2).png',
            "titre": 'carrots',
            "category": "légumes",
          },
          {
            "image": 'assets/broccoli.png',
            "titre": 'broccoli',
            "category": "légumes",
          },
          {
            "image": 'assets/spinach.png',
            "titre": 'épinard',
            "category": "légumes",
          },
          {
            "image": "assets/apple.png",
            "titre": "pomme",
            "category": "fruits",
          },
          {
            "image": "assets/banane.png",
            "titre": "banane",
            "category": "fruits",
          },
          {
            "image": "assets/orange.png",
            "titre": "orange",
            "category": "fruits",
          },
          {
            "image": "assets/strawberry.png",
            "titre": "fraise",
            "category": "fruits"
          },
          {
            "image": "assets/grape.png",
            "titre": "raisin",
            "category": "fruits"
          },
          {
            "image": 'assets/water.png',
            "titre": 'eau',
            "category": "liquides",
          },
        ]
      },
      {
        "allergis": [
          {
            "image": 'assets/arachides.jpg',
            "titre": 'arachides',
            "category": "",
            "description":
                'L\'allergie aux arachides est une réaction du corps aux arachides qui peut provoquer des symptômes allant de légers à graves.',
          },
          {
            "image": 'assets/laitiers.jpg',
            "titre": 'lait et produits laitiers',
            "category": "",
            "description":
                'Cette allergie provoque des réactions indésirables en réponse à la consommation de lait, fromage et autres produits laitiers.',
          },
        ],
      },
      {
        "robots": [
          {
            "image": 'assets/multi_cuiseur.png',
            "titre": 'multi_cuiseur',
            "category": "",
          },
          {
            "image": 'assets/mixeur.png',
            "titre": 'mixeur',
            "category": "",
          },
          {
            "image": 'assets/robot pâtissier.png',
            "titre": 'robot pâtissier',
            "category": "",
          },
          {
            "image": 'assets/batteur.png',
            "titre": 'batteur électrique',
            "category": "",
          },
          {
            "image": 'assets/hachoir.png',
            "titre": 'hachoir électrique',
            "category": "",
          },
        ],
      },
      {
        "regime": [
          {
            "image": 'assets/vegetarisme.jpg',
            "titre": 'Vegetarisme',
            "category": "",
            "description":
                "Le végétarisme est une pratique alimentaire qui exclut la consommation de chair animale.",
          },
          {
            "image": 'assets/lactose.jpg',
            "titre": 'Sans lactose',
            "category": "",
            "description":
                "Un régime sans lactose exclut les produits laitiers pour éviter les symptômes d'intolérance.",
          },
        ],
      },
    [],
    [],
    [],
      {
        "type": [
          {
            "image": 'assets/italie.jpg',
            "titre": 'Italienne',
            "category": "",
          },
          {
            "image": 'assets/france.jpg',
            "titre": 'Française',
            "category": "",
          },
          {
            "image": 'assets/espagnol.jpg',
            "titre": 'Espagnole',
            "category": "",
          },
          {
            "image": 'assets/indian.jpg',
            "titre": 'Indienne',
            "category": "",
          },
          {
            "image": 'assets/chine.jpg',
            "titre": 'Chinoise',
            "category": "",
          },
          {
            "image": 'assets/tunisie.jpg',
            "titre": 'Tunisienne',
            "category": "",
          },
          {
            "image": 'assets/thaïland.jpg',
            "titre": 'Thaïlandais',
            "category": "",
          },
          {
            "image": 'assets/maroc.jpg',
            "titre": 'Marocaine',
            "category": "",
          }
        ],
      },
      {
        "saison": [
          {
            "image": 'assets/printemps.jpg',
            "titre": 'Printemps',
            "category": "",
          },
          {
            "image": 'assets/hiver.jpg',
            "titre": 'Hiver',
            "category": "",
          },
          {
            "image": 'assets/ete.jpg',
            "titre": 'Eté',
            "category": "",
          },
          {
            "image": 'assets/automne.jpg',
            "titre": 'Automne',
            "category": "",
          },
        ],
      }
    ],
    [
      {
        "Evenement": [
          {
            "image": 'assets/anni.jpg',
            "titre": 'Anniversaires',
            "category": "",
          },
          {
            "image": 'assets/mariagee.jpg',
            "titre": 'Mariages',
            "category": "",
          },
          {
            "image": 'assets/famille.jpg',
            "titre": 'Réunions de famille',
            "category": "",
          },
          {
            "image": 'assets/ramamdan.jpg',
            "titre": 'Ramadan',
            "category": "",
          },
          {
            "image": 'assets/pique-nique.jpg',
            "titre": 'Pique-niques',
            "category": "",
          },
        ],
      }
    ],
    [
      {
        "journee": [
          {
            "image": 'assets/petitdej.jpg',
            "titre": 'Petit-déjeuner',
            "category": "",
          },
          {
            "image": 'assets/brunch.jpg',
            "titre": 'Brunch',
            "category": "",
          },
          {
            "image": 'assets/midi.jpg',
            "titre": 'Midi',
            "category": "",
          },
          {
            "image": 'assets/gouter.jpg',
            "titre": 'Goûter',
            "category": "",
          },
          {
            "image": 'assets/diner.jpg',
            "titre": 'Diner',
            "category": "",
          },
        ],
      }
    ],
    [
      {
        "Repas": [
          {
            "image": 'assets/sale.jpg',
            "titre": 'Salé',
            "category": "",
          },
          {
            "image": 'assets/sucre.jpg',
            "titre": 'sucré',
            "category": "",
          },
          {
            "image": 'assets/equilibre.jpg',
            "titre": 'équilibré',
            "category": "",
          },
          {
            "image": 'assets/vegetarien.jpg',
            "titre": 'végétarien',
            "category": "",
          },
          {
            "image": 'assets/rapides.jpg',
            "titre": 'rapide',
            "category": "",
          },
        ],
      }
    
  ];

  late List<List<bool>> selectionStates;
  String searchText = '';
  late TextEditingController _textEditingController;
  late List<String> selectedItems;
  late String selectedHours;
  late String selectedMinutes;
  late String selectedSeconds;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    selectedItems = [];
    selectedHours = '00h';
    selectedMinutes = '00min';
    selectedSeconds = '00s';
    selectionStates = List.generate(
      subLists.length,
      (index) => List.filled(subLists[index].length, false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            controller: _textEditingController,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            onChanged: (searchText) {
              setState(() {
                // Mettez à jour les états de sélection en fonction du texte de recherche
                for (int i = 0; i < subLists[widget.subListIndex].length; i++) {
                  selectionStates[widget.subListIndex][i] =
                      subLists[widget.subListIndex][i]
                          .toString()
                          .toLowerCase()
                          .contains(searchText.toLowerCase());
                }

                // Réinitialisez les sélections si le texte de recherche est vide
                if (searchText.isEmpty) {
                  for (int i = 0;
                      i < selectionStates[widget.subListIndex].length;
                      i++) {
                    selectionStates[widget.subListIndex][i] = false;
                  }
                }
              });
            },
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              hintStyle: TextStyle(color: Colors.white38),
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {          
                    selectedItems.clear();
                    for (int i = 0;
                        i < selectionStates[widget.subListIndex].length;
                        i++) {
                      if (selectionStates[widget.subListIndex][i]) {
                        selectedItems
                            .add(subLists[widget.subListIndex][i] as String);
                      }
                    }
                    Navigator.pop(
                        context, selectedItems); // Pass selected items back
                  });
                },
                child: Icon(
                  Icons.done,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListView.builder(
            itemCount: subLists[widget.subListIndex].length,
            itemBuilder: (context, index) {
              Map<String, dynamic> item = subLists[widget.subListIndex][index];
              List<Map<String, dynamic>> itemsList = item.values.first;

              if (item.containsKey("allergis")) {
                return Column(
                  children: [
                    for (var allergenIndex = 0;
                        allergenIndex < item["allergis"].length;
                        allergenIndex++)
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectionStates[widget.subListIndex][index] =
                                  !selectionStates[widget.subListIndex][index];
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                selectionStates[widget.subListIndex][index]
                                    ? Color.fromARGB(197, 236, 162, 162)
                                    : Colors.grey[400],
                            foregroundColor:
                                selectionStates[widget.subListIndex][index]
                                    ? Colors.black54
                                    : Colors.black45,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    item["allergis"][allergenIndex]["image"],
                                    height: 89,
                                    width: 110,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item["allergis"][allergenIndex]
                                              ["titre"],
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: selectionStates[
                                                    widget.subListIndex][index]
                                                ? Colors.black54
                                                : Colors.black45,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          item["allergis"][allergenIndex]
                                              ["description"],
                                          style: TextStyle(
                                            fontSize: 11.5,
                                            color: selectionStates[
                                                    widget.subListIndex][index]
                                                ? Colors.black54
                                                : Colors.black45,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                );
              } else if (item.containsKey("regime")) {
                return Column(
                  children: [
                    for (var regimeIndex = 0;
                        regimeIndex < item["regime"].length;
                        regimeIndex++)
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectionStates[widget.subListIndex][index] =
                                  !selectionStates[widget.subListIndex][index];
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                selectionStates[widget.subListIndex][index]
                                    ? Color.fromARGB(197, 236, 162, 162)
                                    : Colors.grey[400],
                            foregroundColor:
                                selectionStates[widget.subListIndex][index]
                                    ? Colors.black54
                                    : Colors.black45,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    item["regime"][regimeIndex]["image"],
                                    height: 89,
                                    width: 110,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item["regime"][regimeIndex]["titre"],
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: selectionStates[
                                                    widget.subListIndex][index]
                                                ? Colors.black54
                                                : Colors.black45,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          item["regime"][regimeIndex]
                                              ["description"],
                                          style: TextStyle(
                                            fontSize: 11.5,
                                            color: selectionStates[
                                                    widget.subListIndex][index]
                                                ? Colors.black54
                                                : Colors.black45,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Wrap(
                      spacing: 10,
                      runSpacing: 8,
                      children: [
                        for (var subItem in itemsList)
                         Padding(
  padding: const EdgeInsets.fromLTRB(3, 8, 3, 0),
  child: ElevatedButton(
    onPressed: () {
      setState(() {
        selectionStates[widget.subListIndex][index] =
            !selectionStates[widget.subListIndex][index];
      });
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: selectionStates[widget.subListIndex][index]
          ? Color.fromARGB(197, 236, 162, 162)
          : Colors.grey[400],
      foregroundColor: selectionStates[widget.subListIndex][index]
          ? Colors.black54
          : Colors.black45,
    ),
   child: Column(
  children: [
    if (item.containsKey("category"))
      // Stocker la première catégorie pour la comparaison ultérieure
      String firstCategory = subItem["category"][0];
      // Afficher le nom de la catégorie une seule fois
      Text(
        firstCategory,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          color: selectionStates[widget.subListIndex][index]
              ? Colors.black54
              : Colors.black45,
        ),
      ),
      for (var categIndex = 0;
          categIndex < item["category"].length;
          categIndex++)
        if (subItem["category"][categIndex] == firstCategory)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(
                  subItem["image"],
                  height: 51,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Text(
                  subItem["titre"],
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: selectionStates[widget.subListIndex][index]
                        ? Colors.black54
                        : Colors.black45,
                  ),
                ),
              ),
            ],
          ),
  ],
),

  ),
),

                      ],
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
 */