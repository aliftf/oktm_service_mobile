
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class pengajuanPage extends StatelessWidget {
  const pengajuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Screen(),
      backgroundColor: Color(0xFF9E0000),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            child: Text("string", style: TextStyle(
            fontSize: 16, 
            color: Colors.white,
            fontWeight: FontWeight.w600
            ),),
          ),
          Container()
        ],
      ),
    );
  }
}
