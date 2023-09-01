import 'package:apps/profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            obscureText: true,
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Nom',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextFormField(
            obscureText: true,
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Mot de passe',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 25),
          TextFormField(
            obscureText: true,
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Adresse Email',
              labelStyle: TextStyle(
                  color: Colors
                      .white), // Changer la couleur du texte du label en blanc
              filled: true,
              fillColor: Colors
                  .transparent, // Couleur de remplissage du champ de texte transparente
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors
                        .white), // Changer la couleur de la bordure en blanc
                borderRadius: BorderRadius.circular(7),
              ),
            ),
          ),
          SizedBox(height: 25),
          SizedBox(
            height: 80,
            child: Theme(
              data: ThemeData(
                canvasColor: Colors.black54, // Change the color of the dropdown
              ),
              child: DropdownButtonFormField<String>(
                value: 'utilisateur_normal',
                items: [
                  DropdownMenuItem(
                    value: 'utilisateur_normal',
                    child: Text(
                      'Utilisateur normal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'chef',
                    child: Text(
                      'Chef',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'nutritionniste',
                    child: Text(
                      'Nutritionniste',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
                onChanged: (value) {
                  // TODO: Update the user type
                },
                decoration: InputDecoration(
                  labelText: 'Type d\'utilisateur',
                  labelStyle: TextStyle(
                      color: Colors
                          .white), // Changer la couleur du texte du label en blanc
                  filled: true,
                  fillColor: Colors
                      .transparent, // Couleur de remplissage du champ de texte transparente
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .white), // Changer la couleur de la bordure en blanc
                    borderRadius: BorderRadius.circular(7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .white), // Changer la couleur de la bordure en blanc
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF840D0D),
              // Couleur du bouton
              foregroundColor: Colors.white, // Couleur du texte du bouton
            ),
            onPressed: () {
              // TODO: Implement the registration logic
            },
            child: Text('S\'inscrire'),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Center(
              child: Text(
                'Avez-vous un compte?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}