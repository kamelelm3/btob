import 'package:flutter/material.dart';

class dai_state extends StatefulWidget {
  @override
  _dai_state createState() => _dai_state();
}

class _dai_state extends State<dai_state> {
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
              'Bienvenue sur la page BrainTap !',
              style: TextStyle(fontSize: 24),
            ),
            // Ajoutez le contenu de la page BrainTap ici
          ],
        ),
      ),
    );
  }
}
