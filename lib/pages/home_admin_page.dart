import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oktm_service_mobile/widgets/custom_admin_bottom_nav_bar.dart';
import 'package:oktm_service_mobile/widgets/home_button.dart';
import 'package:oktm_service_mobile/widgets/item_list_pengajuan.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeAdminPage extends StatefulWidget {
  const HomeAdminPage({super.key});

  @override
  State<HomeAdminPage> createState() => _HomeAdminPageState();
}

class _HomeAdminPageState extends State<HomeAdminPage> {
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
            image:
                DecorationImage(image: AssetImage(asset), fit: BoxFit.cover)),
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
            activeDotScale: 1.4),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: const Color(0xFF9E0000),
                          borderRadius: BorderRadius.circular(5)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                              'assets/images/default_profile.jpg',
                              width: 66,
                              height: 66)),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mahasiswa',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Text('1302210001'),
                        Text('S1 Rekayasa Perangkat Lunak')
                      ],
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider.builder(
                          itemCount: _listImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final _listImage = _listImages[index];

                            return buildImage(_listImage, index);
                          },
                          options: CarouselOptions(
                              height: 125,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              viewportFraction: 0.8,
                              onPageChanged: ((index, reason) => setState(
                                  () => _carouselActiveIndex = index)))),
                      const SizedBox(height: 6),
                      buildIndicator()
                    ],
                  )),
                ),
                const Text(
                  'Pengajuan',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      HomeButton(
                          label: 'List\nPengajuan',
                          assetPath: 'assets/icons/ic_list_pengajuan.png'),
                      SizedBox(width: 16),
                      HomeButton(
                          label: 'Finalisasi\nPengajuan',
                          assetPath:
                              'assets/icons/ic_finalisasi_pengajuan.png'),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Informasi Hasil',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                        color: Color(0xFF9E0000),
                      ),
                    )
                  ],
                ),
                const ItemListPengajuan(
                    name: 'Regeh Renanda',
                    nim: '1302210001',
                    date: '02/04/2024',
                    tipePengajuan: 'Pengajuan KTM Rusak',
                    iconPath: 'assets/icons/ic_ktm_rusak.png')
              ],
            ),
          ),
        ),
        bottomNavigationBar: const CustomAdminBottomNavigationBar());
  }
}
