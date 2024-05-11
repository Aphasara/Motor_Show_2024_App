// ignore_for_file: prefer_const_constructors, prefer_final_fields, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ToyotaUI extends StatefulWidget {
  const ToyotaUI({super.key});

  @override
  State<ToyotaUI> createState() => _ToyotaUIState();
}

class _ToyotaUIState extends State<ToyotaUI> {
  List<String> _showmanu1 = [
    'assets/images/to1.png',
    'assets/images/to2-1.png',
    'assets/images/to3.png',
    'assets/images/to4.png',
    'assets/images/to5.png',
  ];

  List<String> _showmanu2 = [
    'assets/images/to6.png',
    'assets/images/to7.png',
    'assets/images/to8.png',
    'assets/images/to9.png',
  ];

  List<String> _showmanu4 = [
    'assets/images/to10.png',
    'assets/images/to11.png',
    'assets/images/to12.png',
    'assets/images/to13.png',
  ];

  List<String> _showmanu5 = [
    'assets/images/to14-1.png',
    'assets/images/to15-1.png',
  ];

  List<String> _showText1 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'GR 86\nราคา 2,949,000 บาท',
    'GR Supra\nราคา 5,199,000 บาท',
    'Camry\nราคา 1,475,000 บาท',
    'Corlla Altis\nราคา 894,000 บาท',
    'Yaris ATIV\nราคา 549,000 บาท',
  ];

  List<String> _showText2 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Yaris Cross\nราคา 789,000 บาท',
    'BZ4X\nราคา 1,836,000 บาท',
    'Fortuner GR Sport\nราคา 1,969,000 บาท',
    'NEW Corolla Cross\nราคา 999.000 บาท',
  ];

  List<String> _showText4 = [
    // สร้างลิสต์ข้อความสำหรับแต่ละรูป
    'Hilux Revo Standard Cab\nราคา 584,000 บาท',
    'Hilux Revo Rocco\nราคา 1,006,000 บาท',
    'Hilux Revo GR Sport\nราคา 934,000 บาท',
    'Hilux Revo Z Edition\nราคา 669,000 บาท',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'รถเก๋ง',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                ),
                child: ListView.builder(
                  itemCount: _showmanu1.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            _showmanu1[index],
                            height: 100.0, // จำกัดขนาดรูปภาพ
                            fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                          ),
                          SizedBox(
                              height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                          Text(
                            _showText1[index], // แสดงข้อความสำหรับแต่ละรูป
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16, // ขนาดข้อความ
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'รถ SUV & PPV',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                ),
                child: ListView.builder(
                  itemCount: _showmanu2.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            _showmanu2[index],
                            height: 100.0, // จำกัดขนาดรูปภาพ
                            fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                          ),
                          SizedBox(
                              height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                          Text(
                            _showText2[index], // แสดงข้อความสำหรับแต่ละรูป
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16, // ขนาดข้อความ
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'รถกระบะ',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                ),
                child: ListView.builder(
                  itemCount: _showmanu4.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            _showmanu4[index],
                            height: 100.0, // จำกัดขนาดรูปภาพ
                            fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                          ),
                          SizedBox(
                              height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                          Text(
                            _showText4[index], // แสดงข้อความสำหรับแต่ละรูป
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16, // ขนาดข้อความ
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'รถ VAN',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: 200.0, // เพิ่มความสูงเพื่อรองรับข้อความ
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                ),
                child: ListView.builder(
                  itemCount: _showmanu5.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            _showmanu5[index],
                            height: 100.0, // จำกัดขนาดรูปภาพ
                            fit: BoxFit.cover, // ให้รูปภาพเต็มกรอบ
                          ),
                          SizedBox(
                              height: 10), // ระยะห่างระหว่างรูปภาพกับข้อความ
                          Text(
                            _showText4[index], // แสดงข้อความสำหรับแต่ละรูป
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16, // ขนาดข้อความ
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
