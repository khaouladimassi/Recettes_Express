import 'package:flutter/material.dart';

class Ingredients extends StatefulWidget {
  const Ingredients({super.key});

  @override
  State<Ingredients> createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  List<Map<String, dynamic>> ing = [
    {
      "Légumes": [
        {
          "image": "assets/tomato.png",
          "titre": 'tomate',
        },
        {
          "image": 'assets/oignon.png',
          "titre": 'oignon',
        },
        {
          "image": 'assets/ail.png',
          "titre": 'ail',
        },
        {
          "image": 'assets/carrots (2).png',
          "titre": 'carrots',
        },
        {
          "image": 'assets/broccoli.png',
          "titre": 'broccoli',
        },
        {
          "image": 'assets/spinach.png',
          "titre": 'épinard',
        },
        {
          "image": 'assets/bitrave.png',
          "titre": 'bettrave',
        },
        {
          "image": 'assets/pommeterre.png',
          "titre": 'patate',
        },
      ],
    },
    {
      "Fruits": [
        {
          "image": "assets/apple.png",
          "titre": "pomme",
        },
        {
          "image": "assets/banane.png",
          "titre": "banane",
        },
        {
          "image": "assets/orange.png",
          "titre": "orange",
        },
        {"image": "assets/strawberry.png", "titre": "fraise"},
        {"image": "assets/grape.png", "titre": "raisin"},
      ],
    },
    {
      "Liquides": [
        {
          "image": 'assets/eau.png',
          "titre": 'eau',
        },
        {
          "image": 'assets/huile.png',
          "titre": 'huile',
        },
        {
          "image": 'assets/5al.png',
          "titre": 'vinaigre',
        },
      ]
    }
  ];
  List<List<bool>> selectionStates = [];

  @override
  void initState() {
    super.initState();

    // Initialize selection states for each button
    for (var categoryData in ing) {
      List<bool> categorySelections = [];
      for (var entry in categoryData.entries) {
        categorySelections.addAll(List.filled(entry.value.length, false));
      }
      selectionStates.add(categorySelections);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              hintStyle: TextStyle(color: Colors.white38),
              border: InputBorder.none,
              suffixIcon: GestureDetector(
                onTap: () {},
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var categoryData
                  in ing) // Parcourir chaque catégorie d'ingrédients
                for (var entry in categoryData
                    .entries) // Parcourir les entrées (clé-valeur) de la catégorie
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            entry.key,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 236, 162, 162),
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                      Wrap(
                        children:
                            entry.value.asMap().entries.map<Widget>((entry) {
                          int index = entry.key;
                          var item = entry.value;
                          int categoryIndex = ing.indexOf(categoryData);

                          return Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    selectionStates[categoryIndex][index] =
                                        !selectionStates[categoryIndex][index];
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      selectionStates[categoryIndex][index]
                                          ? Color.fromARGB(197, 236, 162, 162)
                                          : Colors.grey[500],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      item["image"],
                                      height: 70,
                                      width: 90,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                      child: Text(
                                        item["titre"],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ));
                        }).toList(),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
