import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

@override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.red,
            ),
            Container(
              height: MediaQuery.of(context).size.height - 300,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Container(
                      height: MediaQuery.of(context).size.height - 500,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add your button onPressed logic here
                    },
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(MediaQuery.of(context).size.width - 50, 50),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    child: const Text('Edit Profil', style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            )
          ]
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label:  'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}