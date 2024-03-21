import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oktm_service_mobile/pages/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9E0000),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 580,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(210),
                  bottomRight: Radius.circular(210),
                )),
            child: Image.asset(
              'assets/images/logo_tel_u.png',
            ),
          ),
          SizedBox(height: 100),
          Container(
            child: Text(
              "OKTM Service Mobile",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 5),
          Container(
            child: Text(
              "Telkom University",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}