import 'package:flutter/material.dart';
import 'package:oktm_service_mobile/widgets/item_informasi_hasil.dart';

class InformasiHasilPage extends StatefulWidget {
  const InformasiHasilPage({super.key});

  @override
  State<InformasiHasilPage> createState() => _InformasiHasilPageState();
}

class _InformasiHasilPageState extends State<InformasiHasilPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 30, right: 25, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Informasi Hasil Pengajuan KTM",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            Color.fromRGBO(235, 235, 235, 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Tipe',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.keyboard_arrow_down,
                                  color: Colors.black),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            Color.fromRGBO(235, 235, 235, 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Status',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.keyboard_arrow_down,
                                  color: Colors.black),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        ItemInformasiHasil(date: '18/02/2023', tipe: 'Pengajuan KTM Rusak', status: 'Selesai'),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
