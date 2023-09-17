// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('This is the details page content.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Utilisez Navigator.pop pour revenir à la page précédente
                Navigator.pop(context);
              },
              child: const Text('Retour'),
            ),
          ],
        ),
      ),
    );
  }
}
