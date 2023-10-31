// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'stat/statistics_p1.dart';
import 'shops.dart';
import 'create_distributor.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> distributorOptions = ['Statistics', 'Shop'];
  String selectedOption = 'Statistics';

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
              for (String option in distributorOptions)
                ElevatedButton(
                  onPressed: () {
                    if (option == 'Statistics') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => statistics_p1(),
                        ),
                      );
                    } else if (option == 'Shop') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => shops(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        selectedOption == option ? Colors.orange : null,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (option == 'Statistics')
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/statistics.svg',
                          ),
                        ),
                      if (option == 'Shop')
                        FractionallySizedBox(
                          child: SvgPicture.asset(
                            'assets/homepage/shop.svg',
                          ),
                        ),
                      const SizedBox(height: 80),
                      Text(
                        option,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_outlined, // Icône de la flèche
                        size: 50, // Taille de l'icône
                      ),
                    ],
                  ),
                ),
              ElevatedButton(
                onPressed: () async {
                  final newDistributor = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateDistributor(),
                    ),
                  );
                  if (newDistributor != null) {
                    setState(() {
                      distributorOptions.add(newDistributor);
                    });
                  }
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
