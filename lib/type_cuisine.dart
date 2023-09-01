import 'package:flutter/material.dart';

class TypeCuisine extends StatefulWidget {
  const TypeCuisine({Key? key}) : super(key: key);

  @override
  State<TypeCuisine> createState() => _TypeCuisineState();
}

class _TypeCuisineState extends State<TypeCuisine> {
  List<Map<String, dynamic>> cuisine = [
    {
      "Afrique": [
        {
          "image": "assets/maroc.jpg",
          "titre": 'Maroc',
        },
        {
          "image": 'assets/Nigeria.jpg',
          "titre": 'Nigeria',
        },
        {
          "image": 'assets/Éthiopie.jpg',
          "titre": 'Éthiopie',
        },
      ],
    },
    {
      "Asie": [
        {
          "image": "assets/japon.jpg",
          "titre": "Japon ",
        },
        {
          "image": "assets/chine.jpg",
          "titre": "Chine ",
        },
        {
          "image": "assets/indian.jpg",
          "titre": "Inde ",
        },
      ],
    },
    {
      "Europe": [
        {
          "image": 'assets/italie.jpg',
          "titre": 'Italie',
        },
        {
          "image": 'assets/france.jpg',
          "titre": 'France ',
        },
        {
          "image": 'assets/espagnol.jpg',
          "titre": 'Espagne ',
        },
        {
          "image": 'assets/Grèce.jpg',
          "titre": 'Grèce ',
        },
      ],
    },
  ];
  List<List<bool>> selectionStates = [];

  @override
  void initState() {
    super.initState();

    // Initialize selection states for each button
    for (var cuisineData in cuisine) {
      List<bool> categorySelections = [];
      for (var entry in cuisineData.entries) {
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
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (var cuisineData in cuisine)
                for (var entry in cuisineData.entries)
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
                          int categoryIndex = cuisine.indexOf(cuisineData);

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
                                backgroundColor: selectionStates[categoryIndex]
                                        [index]
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
                            ),
                          );
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
