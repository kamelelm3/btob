import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatPage1 extends StatefulWidget {
  @override
  _StatPage1 createState() => _StatPage1();
}

class _StatPage1 extends State<StatPage1> {
  String selectedView =
      "jour"; // Par défaut, la vue quotidienne est sélectionnée.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BrainTap'),
      ),
      body: Column(
        children: [
          // Ligne de boutons pour les vues de consommation
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedView = "jour";
                  });
                },
                child: Text("Jour"),
                style: selectedView == "jour"
                    ? ElevatedButton.styleFrom(backgroundColor: Colors.blue)
                    : null,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedView = "semaine";
                  });
                },
                child: Text("Semaine"),
                style: selectedView == "semaine"
                    ? ElevatedButton.styleFrom(backgroundColor: Colors.blue)
                    : null,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedView = "mois";
                  });
                },
                child: Text("Mois"),
                style: selectedView == "mois"
                    ? ElevatedButton.styleFrom(backgroundColor: Colors.blue)
                    : null,
              ),
            ],
          ),
          const SizedBox(height: 20),
          // Graphique de consommation
          Container(
            height: 200, // Ajustez la hauteur selon vos besoins
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                barGroups: [
                  // Les données du graphique vont ici en fonction de la vue sélectionnée.
                  // Vous devrez mettre à jour ces données en conséquence.
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
