import 'package:flutter/material.dart';
import 'package:apps/fooddetail.dart';

class RecipeSearchResultsPage extends StatefulWidget {
  final List<Map<String, dynamic>> results;
  final List<Map<String, dynamic>> foodlist;

  const RecipeSearchResultsPage({
    Key? key,
    required this.foodlist,
    required this.results,
  }) : super(key: key);

  @override
  _RecipeSearchResultsPageState createState() =>
      _RecipeSearchResultsPageState();
}

class _RecipeSearchResultsPageState extends State<RecipeSearchResultsPage> {
  late TextEditingController _textEditingController;
  List<Map<String, dynamic>> filteredResults = [];
  List<String> favoriteRecipes = []; // Define the list of favorite recipes


  @override
  void initState() {
    super.initState();
    _textEditingController =
        TextEditingController(); // Initialize the controller here
    filteredResults =
        widget.results; // Initialize filtered results with all results
  }

  
  void filterResults(List<String> keywords) {
    setState(() {
      if (keywords.isEmpty) {
        // If keywords are empty, show all results
        filteredResults = widget.results;
      } else {
        filteredResults = widget.results.where((recipe) {
          final title = recipe["titre"].toString().toLowerCase();
          return keywords.any((kw) => title.contains(kw.toLowerCase())) &&
              isFavorite(recipe);
        }).toList();
      }
    });
  }

 bool isFavorite(Map<String, dynamic> recipe) {
    final title = recipe['titre'];
    return favoriteRecipes.contains(title);
  }


 List<String> gatherKeywords() {
    List<String> keywords = [];

    // Gather keyword from main search text field
    keywords.add(_textEditingController.text);

    // Remove empty keywords
    keywords.removeWhere((keyword) => keyword.isEmpty);

    print('Gathered Keywords: $keywords');
    return keywords;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onChanged: (value) {
              final keywords = gatherKeywords();
              filterResults(keywords);
            },
            decoration: InputDecoration(
              hintText: 'Rechercher...',
              hintStyle: const TextStyle(color: Colors.white38),
              border: InputBorder.none,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: filteredResults.length,
          itemBuilder: (context, index) {
            final recipe = filteredResults[index];

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FoodDetail(fooddata: recipe),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(
                        recipe['image'],
                        width: 140,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          recipe['titre'],
                          style: TextStyle(
                            color: const Color.fromARGB(255, 14, 13, 13),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
