import 'package:flutter/material.dart';

class CreateDistributor extends StatefulWidget {
  @override
  _CreateDistributorState createState() => _CreateDistributorState();
}

class _CreateDistributorState extends State<CreateDistributor> {
  TextEditingController distributorNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add new DAI'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: distributorNameController,
              decoration: InputDecoration(labelText: 'Nom du distributeur'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Récupérer le nom du distributeur saisi par l'utilisateur
                String newDistributorName = distributorNameController.text;

                if (newDistributorName.isNotEmpty) {
                  // Vous pouvez ici enregistrer le distributeur dans votre base de données
                  // et renvoyer le nom du distributeur créé à la page précédente
                  Navigator.pop(context, newDistributorName);
                } else {
                  // Afficher un message d'erreur si le nom du distributeur est vide
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text('Le nom du distributeur ne peut pas être vide.'),
                    ),
                  );
                }
              },
              child: Text('Créer le distributeur'),
            ),
          ],
        ),
      ),
    );
  }
}
