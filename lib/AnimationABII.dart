// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'loginPage.dart';
// import 'loginPage_v2.dart';

class AnimationABII extends StatefulWidget {
  @override
  _AnimationABIIState createState() => _AnimationABIIState();
}

class _AnimationABIIState extends State<AnimationABII> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => const loginPage(title: 'abii B2B app')),
        // builder: (context) => const loginPage_v2(title: 'abii B2B app')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/intro/logo_abii.svg',
            ),
            const SizedBox(height: 16), // Add some spacing
          ],
        ),
      ),
    );
  }
}
