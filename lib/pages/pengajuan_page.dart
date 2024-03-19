
import 'package:flutter/cupertino.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(24),
            height: 105,
            child: Row(
              children: [
                Icon(Icons.arrow_back, color: Colors.white,),
                SizedBox(width: 10,),
                Text("string", style: Theme.of(context).textTheme.bodyLarge,),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                children: [
                  //header s&k
                  Row(
                    children: [
                      Icon(Icons.info_outline),
                      SizedBox(width: 10,),
                      Text("string", style: TextStyle(),),
                    ],
                  ),
                  //content s&k
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("""Ketentuan dapat mengajukan perbaikan KTM
\u2022 Terdaftar sebagai mahasiswa yang masih menempuh pendidikan di Telkom University.
\u2022 KTM yang ingin diperbaiki masih ada secara fisik.

Persyaratan lampiran
\u2022 KSM
\u2022 Foto dari KTM
\u2022 Bukti pembayaran"""
                    ),
                  ),
                  //header form
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                    children: [
                      Text("Filing Form", style: TextStyle(),),
                    ],
                  )),
                  //form1
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:  Color(0xFF9E0000),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          height: 111,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(width: 1.0, color: Color(0xFFCECECE))
                          ),
                          height: 91,
                        )
                      ]
                    ) 
                  ),
                  //form2
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:  Color(0xFF9E0000),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          height: 111,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(width: 1.0, color: Color(0xFFCECECE))
                          ),
                          height: 91,
                        )
                      ]
                    ) 
                  ),
                  //form3
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color:  Color(0xFF9E0000),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          height: 111,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(width: 1.0, color: Color(0xFFCECECE))
                          ),
                          height: 91,
                        )
                      ]
                    ) 
                  ),
                ],
              )
            ),
          )
          
        ],
      ),
    );
  }
}
