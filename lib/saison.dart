import 'package:flutter/material.dart';

class Saison extends StatefulWidget {
  const Saison({super.key});

  @override
  State<Saison> createState() => _SaisonState();
}

class _SaisonState extends State<Saison> {
  List<Map<String, dynamic>> saison = [
    {
      "image": 'assets/printemps.jpg',
      "titre": 'Printemps',
    },
    {
      "image": 'assets/hiver.jpg',
      "titre": 'Hiver',
    },
    {
      "image": 'assets/ete.jpg',
      "titre": 'Eté',
    },
    {
      "image": 'assets/automne.jpg',
      "titre": 'Automne',
    },
  ];
   //Déclarer une liste de listes vide appelée 'selectionStates' pour stocker l'état de selection de chaque element (false , true)
  List<List<bool>> selectionStates = [];
  // => Ce code permet de parcourir les éléments de la liste 'regime' et d'initialiser l'état de sélection de chaque élément à false, ce qui signifie que tous les éléments de la liste 'regime' ne sont pas sélectionnés par défaut.
  @override
  void initState() {
    super.initState();
      // parcourir les elements de la liste 'regime'
    for (int i = 0; i < saison.length; i++) {
      //ajouter une nouvelle liste a la liste 'selectionStates' en associant a chaque element de la liste 'regime ' une valeur initiale de false 
      selectionStates.add(List.filled(saison[i].length, false));
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
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                for (var saisonData in saison)
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(70, 20, 70, 0),
                          child: ElevatedButton(
                            onPressed: () {
                            // Obtenir l'index de 'regimeData' dans la liste 'regime'
                            int index = saison.indexOf(saisonData);
                            // Mettre à jour l'état de sélection des éléments de la liste associée à 'regimeData'
                            setState(() {
                              for (int i = 0; i < saison[index].length; i++) {
                                // Inverser l'état de sélection actuel (passer de true à false ou de false à true)
                                selectionStates[index][i] =
                                    !selectionStates[index][i];
                              }
                            });
                          },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                selectionStates[saison.indexOf(saisonData)]
                                        .any((isSelected) => isSelected) // Vérifie si au moins un élément est sélectionné
                                    ? Color.fromARGB(197, 236, 162, 162)
                                    : Colors.grey[500],
                              padding: EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      saisonData["image"],
                                      height: 100,
                                      width: 220,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        saisonData["titre"],
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
