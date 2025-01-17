import 'package:flutter/material.dart';
import 'MainPage.dart';
import 'AnimationService.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key, required this.title});
  final String title;
  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _skip_id_page() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
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
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) =>
                    AnimationService()), // Change to IntroPage
          );
        },
        tooltip: 'Skip',
        child: const Icon(Icons.add),
      ),
    );
  }
}
