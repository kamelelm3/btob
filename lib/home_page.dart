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
        child: SingleChildScrollView(
          // Ajout de SingleChildScrollView pour le défilement vertical
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
                    child: Container(
                      width:
                          double.infinity, // Prend toute la largeur de l'écran
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AspectRatio(
                          aspectRatio:
                              1.0, // Ratio de 1:1 pour conserver la proportion
                          child: SvgPicture.asset(
                            'assets/homepage/donnee.svg', // Chemin de l'image SVG
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedOption = 'Statistics';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedOption == 'Statistics'
                          ? Colors.blue // Couleur du bouton sélectionné
                          : null,
                    ),
                    child: Container(
                      width:
                          double.infinity, // Prend toute la largeur de l'écran
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AspectRatio(
                          aspectRatio:
                              1.0, // Ratio de 1:1 pour conserver la proportion
                          child: SvgPicture.asset(
                            'assets/homepage/statistics.svg', // Chemin de l'image SVG
                          ),
                        ),
                      ),
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
                    child: Container(
                      width:
                          double.infinity, // Prend toute la largeur de l'écran
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: AspectRatio(
                          aspectRatio:
                              1.0, // Ratio de 1:1 pour conserver la proportion
                          child: SvgPicture.asset(
                            'assets/homepage/shop.svg', // Chemin de l'image SVG
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
