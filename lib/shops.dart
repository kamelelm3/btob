import 'package:flutter/material.dart';

class shops extends StatefulWidget {
  @override
  _shops createState() => _shops();
}

class _shops extends State<shops> {
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
              'Bienvenue sur la page shops !',
              style: TextStyle(fontSize: 24),
            ),
            // Ajoutez le contenu de la page BrainTap ici
          ],
        ),
      ),
    );
  }
}
