import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final String label;
  final String assetPath;

  const HomeButton({super.key, required this.label, required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 90
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            padding:
                const EdgeInsets.only(top: 5, right: 20, bottom: 5, left: 20),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF9E0000), width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: Image.asset(assetPath,
                width: 50, height: 50),
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            ),
        ],
      ),
    );
  }
}
