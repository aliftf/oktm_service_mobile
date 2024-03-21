import 'package:flutter/material.dart';

class ItemListPengajuan extends StatelessWidget {
  final String tipePengajuan;
  final String name;
  final String nim;
  final String date;
  final String iconPath;

  const ItemListPengajuan(
      {super.key,
      required this.name,
      required this.nim,
      required this.date,
      required this.tipePengajuan,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF9E0000), width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
            child: Image.asset(iconPath),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            decoration: BoxDecoration(
                border: Border(
              left: BorderSide(color: Color(0xFF9E0000), width: 1),
            )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tipePengajuan,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
                Text(name),
                Text(nim),
                Text(date),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Color(0xFF9E0000)))),
                  child: Text(
                    'Proses',
                    style: TextStyle(fontSize: 12, color: Color(0xFF9E0000)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
