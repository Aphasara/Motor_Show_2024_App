// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:motor_show_2024_app/views/calculate_ui.dart';
import 'package:motor_show_2024_app/views/honda_ui.dart';
import 'package:motor_show_2024_app/views/mazda_ui.dart';
import 'package:motor_show_2024_app/views/mitsubishi_ui.dart';
import 'package:motor_show_2024_app/views/toyota_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _currentIndex = 2;

  List<Widget> ShowUI = [
    ToyotaUI(),
    MitsubishiUI(),
    CalculateUI(),
    HondaUI(),
    MazdaUI(),
  ];

  List<String> _titleText = [
    'Toyota',
    'Mitsubishi',
    'คำนวณค่างวดรถ',
    'Honda',
    'Mazda',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.lightBlueAccent,
        title: Text(
          _titleText[_currentIndex],
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: ConvexAppBar(
        activeColor: Colors.transparent,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 0, 38, 255),
            Color.fromARGB(255, 243, 33, 33),
            Color.fromARGB(255, 208, 255, 0),
          ],
        ),
        onTap: (Value) {
          setState(() {
            _currentIndex = Value;
          });
        },
        initialActiveIndex: _currentIndex,
        items: [
          TabItem(
            icon: Icon(
              FontAwesomeIcons.car,
              color: Color.fromARGB(255, 9, 109, 190),
            ),
            title: 'toyota',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.carRear,
              color: Colors.green,
            ),
            title: 'mitshubishi',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.house,
              color: Color.fromARGB(255, 255, 187, 0),
            ),
            title: 'home',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.carSide,
              color: Color.fromARGB(255, 155, 138, 40),
            ),
            title: 'honda',
          ),
          TabItem(
            icon: Icon(
              FontAwesomeIcons.carOn,
              color: const Color.fromARGB(255, 33, 243, 51),
            ),
            title: 'mazda',
          ),
        ],
      ),
      body: ShowUI[_currentIndex],
    );
  }
}
