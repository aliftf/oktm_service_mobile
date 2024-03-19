import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VerifikasiPengajuan extends StatelessWidget {
  const VerifikasiPengajuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Verifikasi Pengajuan KTM',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'KSM - Nama Mahasiswa',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 200,
                                  color: Colors.amber
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 20,
                                  color: Colors.brown
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 100,
                                  color: Colors.cyan,
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 30,
                                  color: Colors.indigo
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF9E0000),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}