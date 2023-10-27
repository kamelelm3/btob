// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dai_state.dart';
import 'statistics.dart';
import 'shops.dart';

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
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dai_state()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedOption == 'BrainTap'
                          ? Color.fromARGB(
                              255, 207, 93, 0) // Couleur du bouton sélectionné
                          : null,
                    ),
                    child: Row(
                      children: [
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/beer.svg',
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'BrainTap',
                          style: TextStyle(
                            fontSize: 16, // Définissez la taille de la police
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_right_outlined, // Icône de la flèche
                          size: 30, // Taille de l'icône
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => statistics()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedOption == 'Statistics'
                          ? Colors.blue // Couleur du bouton sélectionné
                          : null,
                    ),
                    child: Row(
                      children: [
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/statistics.svg',
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Statistics',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_right_outlined, // Icône de la flèche
                          size: 30, // Taille de l'icône
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => shops()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: selectedOption == 'Shop'
                          ? Colors.blue // Couleur du bouton sélectionné
                          : null,
                    ),
                    child: Row(
                      children: [
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/shop.svg',
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Shop',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.arrow_right_outlined, // Icône de la flèche
                          size: 30, // Taille de l'icône
                        ),
                      ],
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
