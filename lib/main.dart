import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce_flutter/auth/data/AuthService.dart';
import 'package:e_commerce_flutter/splash/presentation/screen/onboarding_screen.dart';
import 'package:e_commerce_flutter/splash/presentation/screen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  AuthService(FirebaseAuth.instance);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: SplashScreen(),
        duration: 2000,
        nextScreen: OnboardingScreen(),
      ),
    );
  }
}