import 'package:flutter/material.dart';

class CreateDistributor extends StatefulWidget {
  @override
  _CreateDistributorState createState() => _CreateDistributorState();
}

class _CreateDistributorState extends State<CreateDistributor> {
  TextEditingController distributorName = TextEditingController();
  String? selectedDistributorType = 'DAI'; // Option par défaut

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Distributor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: distributorName,
              decoration: const InputDecoration(labelText: 'Name: '),
            ),
            const SizedBox(height: 20),
            // Menu déroulant pour choisir le type de distributeur
            DropdownButton<String>(
              value: selectedDistributorType,
              onChanged: (String? newValue) {
                setState(() {
                  selectedDistributorType = newValue;
                });
              },
              items: <String>['DAI', 'TAI', 'Wall', 'Bière Truck', 'Cleaner']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String newDistributorName = distributorName.text;
                if (newDistributorName.isNotEmpty) {
                  // Vous pouvez ici enregistrer le distributeur dans votre base de données
                  // avec le nom et le type sélectionnés
                  // et renvoyer les informations à la page précédente
                  String distributorInfo =
                      '$newDistributorName - $selectedDistributorType';
                  Navigator.pop(context, distributorInfo);
                } else {
                  // Afficher un message d'erreur si le nom du distributeur est vide
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Invalid name.'),
                    ),
                  );
                }
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
