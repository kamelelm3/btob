import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'MainPage.dart';
import 'AnimationService.dart';

class loginPage_v2 extends StatefulWidget {
  const loginPage_v2({super.key, required this.title});
  final String title;
  @override
  State<loginPage_v2> createState() => _loginPage_v2State();
}

class _loginPage_v2State extends State<loginPage_v2> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _skip_id_page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainPage()));
  }

  Future<void> _login() async {
    try {
      final response = await Dio().post(
        'https://votre-serveur/api/login',
        data: {
          'username': _usernameController.text,
          'password': _passwordController.text,
        },
      );

      // Traitez la réponse ici
      if (response.statusCode == 200) {
        // La connexion a réussi
        _skip_id_page();
      } else {
        // La connexion a échoué, affichez un message d'erreur par exemple
        print('Échec de la connexion');
      }
    } catch (e) {
      // Gérez les erreurs ici
      print('Erreur lors de la connexion : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Identifiant',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true, // Pour masquer le mot de passe
                decoration: const InputDecoration(
                  labelText: 'Mot de passe',
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:
            _login, // Appel de la fonction _login lorsqu'on appuie sur le bouton
        tooltip: 'Login',
        child: const Icon(Icons.login),

      ),
    );
  }
}
