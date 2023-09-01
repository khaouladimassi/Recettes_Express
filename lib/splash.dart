import 'dart:ui';

import 'package:apps/acceuil.dart';
import 'package:flutter/material.dart';
import 'package:sweep_animation_button/sweep_animation_button.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF7043),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.74,
              children: [
                Image.asset(
                  'assets/11.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/sucré.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/granola.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/pasta.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/roz.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/cookies.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: Container(
                color: Colors.black12.withOpacity(0.3),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(32),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                width: 410, // Set the desired width of the image
                height: 410, // Set the desired height of the image
                child: Image.asset(
                  'assets/logo1.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 190),
              SweepAnimationButton(
                width: 180,
                height: 40,
                animationProgressColor: Colors.white70,
                borderRadius: 40,
                animationColor: Colors.green[700],
                backroundColor: Colors.lightGreen[200],
                durationCircle: 2,
                hideIcon: true,
                child: Text(
                  "C'est parti",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green[700],
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AcceuilPage()),
                  );
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
