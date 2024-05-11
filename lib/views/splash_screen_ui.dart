// ignore_for_file: prefer_const_constructors, must_call_super

import 'package:flutter/material.dart';
import 'package:motor_show_2024_app/views/introduction_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => IntroductionUI(),
                ),
              ),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 10, 27),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/images/logo2.png',
                width: MediaQuery.of(context).size.width * 0.7,
              ),
            ),
            Text(
              'Motor Show 2024',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'The Mobility Of Toy Full Experiences',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.02,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Text(
              'Created by 6419410038',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                color: Colors.white,
              ),
            ),
            Text(
              'Computer Engineering 2024',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}