import 'dart:html';

import 'package:flutter/material.dart';
import 'package:oktm_service_mobile/pages/pengajuan_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9E0000)),
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 16, 
            color: Colors.white,
            fontWeight: FontWeight.w700
            )
          ) 
      ),
      home: const pengajuanPage(),
      // initialRoute: '/',
      // routes: {
      //   '/login': (context) => LoginPage(),
      // },
    );
  }
}