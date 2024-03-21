import 'package:flutter/material.dart';
import 'package:oktm_service_mobile/pages/home_admin_page.dart';
import 'package:oktm_service_mobile/pages/splash_screen.dart';
import './pages/login_page.dart';
import './pages/home_page.dart';
import './pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: SplashScreen(),

      // initialRoute: '/',
      // routes: {
      //   '/login': (context) => LoginPage(),
      // },
    );
  }
}