import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('asset/img/logo.avif'))
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
