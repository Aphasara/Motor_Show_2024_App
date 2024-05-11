// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ShowBillUI extends StatefulWidget {
  const ShowBillUI({super.key});

  @override
  State<ShowBillUI> createState() => _ShowBillUIState();
}

class _ShowBillUIState extends State<ShowBillUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 0, 102, 255),
              Color.fromARGB(255, 255, 17, 0),
            ],
          ),
        ),
      ),
    );
  }
}
