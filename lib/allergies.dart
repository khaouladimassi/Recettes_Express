import 'package:flutter/material.dart';

class Allergies extends StatefulWidget {
  const Allergies({super.key});

  @override
  State<Allergies> createState() => _AllergiesState();
}

class _AllergiesState extends State<Allergies> {
  List<Map<String, dynamic>> allergies = [
    {
      "image": "assets/arachides.jpg",
      "titre": 'arachides',
      "description":
          'L\'allergie aux arachides est une réaction anormale du système immunitaire à l\'ingestion ou au contact de l\'arachide, une légumineuse qui peut provoquer des symptômes variés.',
    },
    {
      "image": 'assets/lait.jpg',
      "titre": 'lait ',
      "description":
          'L\'allergie au lait et aux produits laitiers est une réaction anormale du système immunitaire à une ou plusieurs protéines présentes dans le lait de vache ou d\'autres animaux.',
    },
    {
      "image": 'assets/blé.jpg',
      "titre": 'Blé et triticale',
      "description":
          'L\'allergie au blé et au triticale est une maladie qui fait que le corps réagit mal à certaines protéines de ces céréales.',
    },
    {
      "image": 'assets/crevettes.jpg',
      "titre": 'Crustacés et mollusques',
      "description":
          'Les allergies aux crustacés et aux mollusques surviennent lorsque le corps réagit de manière anormale aux fruits de mer comme les crevettes, crabes et moules.',
    },
  ];
  //Déclarer une liste de listes vide appelée 'selectionStates' pour stocker l'état de selection de chaque element (false , true)
  List<List<bool>> selectionStates = [];
  // => Ce code permet de parcourir les éléments de la liste 'regime' et d'initialiser l'état de sélection de chaque élément à false, ce qui signifie que tous les éléments de la liste 'regime' ne sont pas sélectionnés par défaut.
  @override
  void initState() {
    super.initState();
    // parcourir les elements de la liste 'regime'
    for (int i = 0; i < allergies.length; i++) {
      //ajouter une nouvelle liste a la liste 'selectionStates' en associant a chaque element de la liste 'regime ' une valeur initiale de false
      selectionStates.add(List.filled(allergies[i].length, false));
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
                  child: Column(
                    children: [
                      for (var allergiesData in allergies)
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(13.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    int index =
                                        allergies.indexOf(allergiesData);
                                    setState(() {
                                      for (int i = 0;
                                          i < allergies[index].length;
                                          i++) {
                                        selectionStates[index][i] =
                                            !selectionStates[index][i];
                                      }
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: selectionStates[allergies
                                                .indexOf(allergiesData)]
                                            .any((isSelected) => isSelected)
                                        ? Color.fromARGB(197, 236, 162, 162)
                                        : Colors.grey[500],
                                    padding: selectionStates[allergies
                                                .indexOf(allergiesData)]
                                            .any((isSelected) => isSelected)
                                        ? EdgeInsets.all(20)
                                        : EdgeInsets.all(12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: selectionStates[allergies
                                                    .indexOf(allergiesData)]
                                                .any((isSelected) => isSelected)
                                            ? EdgeInsets.all(1)
                                            : EdgeInsets.fromLTRB(6, 10, 30, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.asset(
                                            allergiesData["image"],
                                            height: selectionStates[allergies
                                                        .indexOf(allergiesData)]
                                                    .any((isSelected) =>
                                                        isSelected)
                                                ? 100
                                                : 120,
                                            width: selectionStates[allergies
                                                        .indexOf(allergiesData)]
                                                    .any((isSelected) =>
                                                        isSelected)
                                                ? 100
                                                : 120,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              allergiesData["titre"],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: selectionStates[
                                                            allergies.indexOf(
                                                                allergiesData)]
                                                        .any((isSelected) =>
                                                            isSelected)
                                                    ? 25
                                                    : 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: selectionStates[
                                                          allergies.indexOf(
                                                              allergiesData)]
                                                      .any((isSelected) =>
                                                          isSelected)
                                                  ? 12
                                                  : 8,
                                            ),
                                            Padding(
                                              padding: selectionStates[
                                                          allergies.indexOf(
                                                              allergiesData)]
                                                      .any((isSelected) =>
                                                          isSelected)
                                                  ? EdgeInsets.all(1)
                                                  : EdgeInsets.all(8),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  allergiesData["description"],
                                                  maxLines: selectionStates[
                                                              allergies.indexOf(
                                                                  allergiesData)]
                                                          .any((isSelected) =>
                                                              isSelected)
                                                      ? null // Aucune limite de lignes lorsque sélectionné
                                                      : 3,
                                                  overflow: selectionStates[
                                                              allergies.indexOf(
                                                                  allergiesData)]
                                                          .any((isSelected) =>
                                                              isSelected)
                                                      ? TextOverflow
                                                          .clip // Clipper le texte complet lorsque sélectionné
                                                      : TextOverflow
                                                          .ellipsis, // Gérer le dépassement en affichant des points de suspension
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: selectionStates[
                                                                allergies.indexOf(
                                                                    allergiesData)]
                                                            .any((isSelected) =>
                                                                isSelected)
                                                        ? 18
                                                        : 15,
                                                    color: const Color.fromARGB(
                                                        255, 233, 207, 207),
                                                  ),
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
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
