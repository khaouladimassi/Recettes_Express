import 'package:flutter/material.dart';

class HeureJournee extends StatefulWidget {
  const HeureJournee({super.key});

  @override
  State<HeureJournee> createState() => _HeureJourneeState();
}

class _HeureJourneeState extends State<HeureJournee> {
  List<Map<String, dynamic>> heure = [
    {
      "image": 'assets/petitdej.jpg',
      "titre": 'Petit-déjeuner',
    },
    {
      "image": 'assets/brunch.jpg',
      "titre": 'Brunch',
    },
    {
      "image": 'assets/midi.jpg',
      "titre": 'Midi',
    },
    {
      "image": 'assets/gouter.jpg',
      "titre": 'Goûter',
    },
    {
      "image": 'assets/diner.jpg',
      "titre": 'Diner',
    },
  ];
  //Déclarer une liste de listes vide appelée 'selectionStates' pour stocker l'état de selection de chaque element (false , true)
  List<List<bool>> selectionStates = [];
  // => Ce code permet de parcourir les éléments de la liste 'regime' et d'initialiser l'état de sélection de chaque élément à false, ce qui signifie que tous les éléments de la liste 'regime' ne sont pas sélectionnés par défaut.
  @override
  void initState() {
    super.initState();
    // parcourir les elements de la liste 'regime'
    for (int i = 0; i < heure.length; i++) {
      //ajouter une nouvelle liste a la liste 'selectionStates' en associant a chaque element de la liste 'regime ' une valeur initiale de false
      selectionStates.add(List.filled(heure[i].length, false));
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
        width: 500,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Wrap(children: [
            for (var heureData in heure)
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                child: ElevatedButton(
                  onPressed: () {
                    // Obtenir l'index de 'regimeData' dans la liste 'regime'
                    int index = heure.indexOf(heureData);
                    // Mettre à jour l'état de sélection des éléments de la liste associée à 'regimeData'
                    setState(() {
                      for (int i = 0; i < heure[index].length; i++) {
                        // Inverser l'état de sélection actuel (passer de true à false ou de false à true)
                        selectionStates[index][i] = !selectionStates[index][i];
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectionStates[heure.indexOf(heureData)]
                            .any((isSelected) =>
                                isSelected) // Vérifie si au moins un élément est sélectionné
                        ? Color.fromARGB(197, 236, 162, 162)
                        : Colors.grey[500],
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset(
                          heureData['image'],
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        heureData['titre'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ]),
        ),
      ),
    );
  }
}
