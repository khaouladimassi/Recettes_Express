import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Row(
          children: [
            Text('Mon Profil'),
            Padding(
              padding: const EdgeInsets.fromLTRB(170, 0, 0, 0),
              child: Icon(
                Icons.lock, // Icône de cadenas pour la connexion
                size: 32,
                color: Colors.white,
                // Couleur de l'icône
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage(
                            'assets/profil.png'), // Remplacez par l'image de profil de l'utilisateur
                      ),
                      Positioned(
                        bottom: 5,
                        right: 0,
                        child: Container(
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment
                    .center, // Aligner les icônes et les textes au centre verticalement
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centrer horizontalement
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.person,
                      size: 24,
                      color: Colors.green[100],
                    ),
                  ),
                  Text(
                    'Nom de l\'utilisateur',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.email,
                      size: 24,
                      color: Colors.green[100],
                    ),
                  ),
                  Text(
                    'adresse.email@example.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.phone,
                      size: 24,
                      color: Colors.green[100],
                    ),
                  ),
                  Text(
                    '14 583 149',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.restaurant_menu,
                      size: 24,
                      color: Colors.green[100],
                    ),
                  ),
                  Text(
                    'Utilisateur normal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 70, 0),
                child: ElevatedButton(
                  onPressed: () {
                    // Code pour gérer le bouton de déconnexion
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit, // Icône de stylo
                        size: 24,
                        color: Colors.white, // Couleur de l'icône
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text(
                          'Modifier le profil',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(135, 76, 175, 79),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
