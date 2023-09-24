// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String selectedOption = 'BrainTap'; // Option par défaut

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            // Utilisez un Column pour aligner les images en colonne
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedOption = 'BrainTap';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedOption == 'BrainTap'
                        ? Colors.blue // Couleur du bouton sélectionné
                        : null,
                  ),
                  child: SvgPicture.asset(
                    'assets/homepage/donnee.svg', // Chemin de l'image SVG
                    width: 200, // Largeur de l'image
                    height: 100, // Hauteur de l'image
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedOption = 'Données';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedOption == 'Données'
                        ? Colors.blue // Couleur du bouton sélectionné
                        : null,
                  ),
                  child: SvgPicture.asset(
                    'assets/homepage/donnee.svg', // Chemin de l'image SVG
                    width: 200, // Largeur de l'image
                    height: 100, // Hauteur de l'image
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedOption = 'Shop';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: selectedOption == 'Shop'
                        ? Colors.blue // Couleur du bouton sélectionné
                        : null,
                  ),
                  child: SvgPicture.asset(
                    'assets/homepage/shop.svg', // Chemin de l'image SVG
                    width: 200, // Largeur de l'image
                    height: 100, // Hauteur de l'image
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Indice de l'élément actuellement sélectionné
        onTap: (index) {
          // Gérez la navigation en bas de page en fonction de l'élément sélectionné
          setState(() {
            if (index == 0) {
              selectedOption = 'Menu';
            } else if (index == 1) {
              selectedOption = 'Catalogue';
            } else if (index == 2) {
              selectedOption = 'Appareil';
            } else if (index == 3) {
              selectedOption = 'Statistique';
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.menu),
            label: 'BrainTap',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.book),
            label: 'Données',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.device_hub),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.save),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}
