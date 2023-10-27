import 'package:flutter/material.dart';

class statistics extends StatefulWidget {
  @override
  _statistics createState() => _statistics();
}

class _statistics extends State<statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BrainTap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenue sur la page statistics !',
              style: TextStyle(fontSize: 24),
            ),
            // Ajoutez le contenu de la page BrainTap ici
          ],
        ),
      ),
    );
  }
}
