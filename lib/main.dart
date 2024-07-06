import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random/provider/random_provider.dart';
import 'package:random/view/home/home_screen.dart';
import 'package:random/view/intro/intro_screen.dart';
import 'package:random/view/splash/splash_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => RandomProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
