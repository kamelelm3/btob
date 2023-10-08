// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_key_in_widget_constructors
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage2 extends StatefulWidget {
  @override
  _IntroPage2State createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        // appBar: AppBar(),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                // image: AssetImage('assets/intro/background2.png'),
                // image: AssetImage('assets/intro/service_svg.svg'),
                image: AssetImage('assets/intro/service_gif.gif'),
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
