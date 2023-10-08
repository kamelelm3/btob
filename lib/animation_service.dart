// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api, use_key_in_widget_constructors
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class AnimationService extends StatefulWidget {
  @override
  _AnimationServiceState createState() => _AnimationServiceState();
}

class _AnimationServiceState extends State<AnimationService> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(milliseconds: 6500), () {
    Future.delayed(const Duration(milliseconds: 500), () {
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
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/intro/service.gif'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
