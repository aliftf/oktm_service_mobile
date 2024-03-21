import 'package:flutter/material.dart';

class ItemInformasiHasil extends StatelessWidget {

  final String date;
  final String tipe;
  final String status;
  final String note_ktm;
  final String note_ksm;
  final String note_surat_kehilangan;
  final String note_bukti_pembayaran;

  ItemInformasiHasil({super.key, required this.date, required this.tipe, required this.status, this.note_ktm = '', this.note_ksm = '', this.note_surat_kehilangan = '', this.note_bukti_pembayaran = ''});

  String getNote(){
    String note = '';
    if(status == 'Selesai'){
      note = 'KTM sudah dapat diambil di BSLA';
    }else{
      if(note_ktm != ''){
        note += 'KTM: ' + note_ktm + '\n';
      }
      if(note_ksm != ''){
        note += 'KSM: ' + note_ksm + '\n';
      }
      if(note_surat_kehilangan != ''){
        note += 'Surat Kehilangan: ' + note_surat_kehilangan + '\n';
      }
      if(note_bukti_pembayaran != ''){
        note += 'Bukti Pembayaran: ' + note_bukti_pembayaran + '\n';
      }
      if(note == ''){
        note = "Tidak ada catatan";
      }
    }
    return note;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFF9E0000),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                EdgeInsets.only(top: 7, right: 30),
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.circular(5)),
                child: Text(
                  date,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: 7,
                right: 2,
                left: 2,
                bottom: 2),
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(tipe,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                Text(
                  status,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.5,
                              color: Color(0xFF9E0000)))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Note",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  child: Text(
                    getNote(),
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(5),
                    color: Color(0xFFEBEBEB),
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