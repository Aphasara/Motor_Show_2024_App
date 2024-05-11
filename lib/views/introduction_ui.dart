// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlueAccent,
              Colors.lightGreenAccent,
              Colors.redAccent,
            ],
          ),
        ),
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              titleWidget: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.40,
                  ),
                  Image.asset(
                    'assets/images/logotoyota.png',
                  ),
                ],
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    child: Text(
                      'วิสัยทัศน์ใหม่ของเราคือ เป็นผู้นำพาการขับเคลื่อนยุคใหม่ เพื่อเสริมสร้างความสุขของผู้คนและความยั่งยืนของสัมคัม',
                      //textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    child: Text(
                      'รุ่นรถหลักคือ รถเก๋ง, รถ SUV and PPV, รถ MPV, รถกระบะ, รถ VAN, รถ Bus',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Image.asset(
                    'assets/images/logomitshu.png',
                  ),
                ],
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'มิตซูบิชิ มอเตอร์ส ประเทศไทย คือหนึ่งในผู้ผลิตรถยนต์ชั้นนำของประเทศไทยที่มีความมุ่งมั่นในการผลิตและจำหน่ายรถยนต์ที่เป็นมิตรกับสิ่งแวดล้อมและมีคุณภาพสูง',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    'รุ่นรถหลักคือ รถกระบะ, รถ 5 ที่นั่ง และรถ 7 ที่นั่ง',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.40,
                  ),
                  Image.asset(
                    'assets/images/logohonda.png',
                  ),
                ],
              ),
              bodyWidget: Column(
                children: [
                  Text(
                    'ฮอนด้าในประเทศไทยเป็นหนึ่งในฐานการผลิตรถยนต์ที่สำคัญของฮอนด้าโดยมุ่งสร้างความแข็งแกร่งทางธุรกิจ และเพิ่มขีดความสามารถในการแข่งขันให้กับรถยนต์และชิ้นส่วนประกอบที่ผลิตขึ้นในประเทศไทยเสมอมา...',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    'เพื่อส่งมอบยานยนต์คุณภาพให้กับลูกค้าในประเทศไทย และในอีกหลายประเทศทั่วโลก',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            PageViewModel(
              titleWidget: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Image.asset(
                    'assets/images/logomazda.png',
                  ),
                ],
              ),
              bodyWidget: Text(
                'มาสด้าเชื่อว่า ในทุกช่วงเวลาที่เราเดินไปพร้อมกัน ทุกลมหายใจจะพาคุณเติบโตและไปต่อ พร้อมเปิดรับประสบการณ์ใหม่ ได้ออกไปค้นพบโลกกว้างในอีกหลากหลายมุม และส่งต่อสิ่งดีๆ ให้กัน มาสด้าจะไปกับคุณทุกเส้นทาง เพื่อก้าวสู่วันพรุ่งนี้',
                //textAlign: TextAlign.center,
              ),
            ),
          ],
          done: Text(
            'หน้าหลัก',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onDone: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          nextFlex: 0,
          showSkipButton: true,
          skip: Text(
            'ข้าม',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          dotsDecorator: DotsDecorator(
            color: Colors.black,
            activeColor: Colors.black,
            activeSize: Size(
              MediaQuery.of(context).size.width * 0.055,
              MediaQuery.of(context).size.width * 0.025,
            ),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
          ),
          infiniteAutoScroll: true,
          autoScrollDuration: 2000,
          globalBackgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
