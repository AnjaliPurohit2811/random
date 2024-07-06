import 'package:flutter/material.dart';

import '../home/home_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 250, left: 30),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('asset/img/i.png'))),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black , width: 4),
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
