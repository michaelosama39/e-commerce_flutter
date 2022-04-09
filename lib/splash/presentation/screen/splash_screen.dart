import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'TOKOTO',
          style: TextStyle(
            fontSize: 60,
            color: Color(0xFFFF7643),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
