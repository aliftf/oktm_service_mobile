import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oktm_service_mobile/widgets/custom_bottom_nav_bar.dart';
import 'package:oktm_service_mobile/widgets/home_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _carouselActiveIndex = 0;

  final _listImages = [
    'assets/images/carousel_1.jpg',
    'assets/images/carousel_2.jpg',
    'assets/images/carousel_3.jpg',
  ];

  Widget buildImage(String asset, int index) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xFF9E0000), width: 1),
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: AssetImage(asset),
        fit: BoxFit.cover
      )
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: _carouselActiveIndex, 
    count: _listImages.length,
    effect: const ScrollingDotsEffect(
      activeDotColor: Color(0xFF9E0000),
      dotColor: Colors.grey,
      dotHeight: 8,
      dotWidth: 8,
      spacing: 8,
      activeDotScale: 1.4
    
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(color: Color(0xFF9E0000), borderRadius: BorderRadius.circular(5)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('assets/images/default_profile.jpg', width: 66, height: 66)
                      ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mahasiswa',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16
                        ),
                      ),
                      Text(
                        '1302210001'
                      ),
                      Text(
                        'S1 Rekayasa Perangkat Lunak'
                      )
                    ],
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider.builder(itemCount: _listImages.length, 
                        itemBuilder: (context, index, realIndex) {
                          final _listImage = _listImages[index];
                      
                          return buildImage(_listImage, index);
                        }, 
                        options: CarouselOptions(
                          height: 125,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                          onPageChanged: ((index, reason) => setState(() => _carouselActiveIndex = index))
                        )
                      ),
                      const SizedBox(height: 6),
                      buildIndicator()
                    ],
                  )
                ),
              ),
              const Text(
                'Pengajuan',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16
                ),
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeButton(label: 'KTM\nRusak', assetPath: 'assets/icons/ic_ktm_rusak.png'),
                  HomeButton(label: 'KTM\nHilang', assetPath: 'assets/icons/ic_ktm_hilang.png'),
                  HomeButton(label: 'KTM Masih Bermasalah', assetPath: 'assets/icons/ic_ktm_masih_bermasalah.png'),
                  HomeButton(label: 'Riwayat Pengajuan', assetPath: 'assets/icons/ic_riwayat_pengajuan.png')
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Informasi Hasil',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                    ),
                  ),
                  Text(
                    'Lihat Semua',
                    style: TextStyle(
                      color: Color(0xFF9E0000),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}