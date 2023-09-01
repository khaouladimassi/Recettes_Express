import 'package:flutter/material.dart';

class Regime extends StatefulWidget {
  const Regime({super.key});

  @override
  State<Regime> createState() => _RegimeState();
}

class _RegimeState extends State<Regime> {
  List<Map<String, dynamic>> regime = [
    {
      "image": 'assets/vegetarisme.jpg',
      "titre": 'Vegetarisme',
      "description":
          "Le végétarisme est une pratique alimentaire qui exclut la consommation de chair animale.",
    },
    {
      "image": 'assets/lactose.jpg',
      "titre": 'Sans lactose',
      "description":
          "Un régime sans lactose exclut les produits laitiers pour éviter les symptômes d'intolérance.",
    },
  ];
  //Déclarer une liste de listes vide appelée 'selectionStates' pour stocker l'état de selection de chaque element (false , true)
  List<List<bool>> selectionStates = [];
  // => Ce code permet de parcourir les éléments de la liste 'regime' et d'initialiser l'état de sélection de chaque élément à false, ce qui signifie que tous les éléments de la liste 'regime' ne sont pas sélectionnés par défaut.
  @override
  void initState() {
    super.initState();
    // parcourir les elements de la liste 'regime'
    for (int i = 0; i < regime.length; i++) {
      //ajouter une nouvelle liste a la liste 'selectionStates' en associant a chaque element de la liste 'regime ' une valeur initiale de false
      selectionStates.add(List.filled(regime[i].length, false));
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
                for (var regimeData in regime)
                  Row(children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Obtenir l'index de 'regimeData' dans la liste 'regime'
                            int index = regime.indexOf(regimeData);
                            // Mettre à jour l'état de sélection des éléments de la liste associée à 'regimeData'
                            setState(() {
                              for (int i = 0; i < regime[index].length; i++) {
                                // Inverser l'état de sélection actuel (passer de true à false ou de false à true)
                                selectionStates[index][i] =
                                    !selectionStates[index][i];
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                selectionStates[regime.indexOf(regimeData)]
                                        .any((isSelected) => isSelected)
                                    ? Color.fromARGB(197, 236, 162, 162)
                                    : Colors.grey[500],
                            padding: selectionStates[regime.indexOf(regimeData)]
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
                                padding:
                                    selectionStates[regime.indexOf(regimeData)]
                                            .any((isSelected) => isSelected)
                                        ? EdgeInsets.all(1)
                                        : EdgeInsets.fromLTRB(6, 10, 30, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    regimeData["image"],
                                    height: selectionStates[
                                                regime.indexOf(regimeData)]
                                            .any((isSelected) => isSelected)
                                        ? 100
                                        : 120,
                                    width: selectionStates[
                                                regime.indexOf(regimeData)]
                                            .any((isSelected) => isSelected)
                                        ? 100
                                        : 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      regimeData["titre"],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: selectionStates[
                                                    regime.indexOf(regimeData)]
                                                .any((isSelected) => isSelected)
                                            ? 25
                                            : 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: selectionStates[
                                                  regime.indexOf(regimeData)]
                                              .any((isSelected) => isSelected)
                                          ? 12
                                          : 8,
                                    ),
                                    Padding(
                                      padding: selectionStates[
                                                  regime.indexOf(regimeData)]
                                              .any((isSelected) => isSelected)
                                          ? EdgeInsets.all(1)
                                          : EdgeInsets.all(8),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          regimeData["description"],
                                          maxLines: selectionStates[regime
                                                      .indexOf(regimeData)]
                                                  .any((isSelected) =>
                                                      isSelected)
                                              ? null // Aucune limite de lignes lorsque sélectionné
                                              : 3,
                                          overflow: selectionStates[regime
                                                      .indexOf(regimeData)]
                                                  .any((isSelected) =>
                                                      isSelected)
                                              ? TextOverflow
                                                  .clip // Clipper le texte complet lorsque sélectionné
                                              : TextOverflow
                                                  .ellipsis, // Gérer le dépassement en affichant des points de suspension
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: selectionStates[regime
                                                        .indexOf(regimeData)]
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
                  ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
