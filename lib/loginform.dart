import 'package:apps/createaccountpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: Text(
              'Bonjour',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Changer la couleur du texte en blanc
                letterSpacing: 3,
              ),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            style: TextStyle(
                color: Colors
                    .white), // Changer la couleur du texte du champ de texte en blanc
            decoration: InputDecoration(
              labelText: 'Numéro de téléphone ou Email',
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
          SizedBox(height: 10),
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
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Place your login logic here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF840D0D),
              // Couleur du bouton
              foregroundColor: Colors.white, // Couleur du texte du bouton
            ),
            child: Text(
              'Se connecter',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Vous n'avez pas de compte ? ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateAccountPage()),
                  );
                },
                child: Text(
                  "Créer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
