import 'package:flutter/material.dart';
import 'package:oktm_service_mobile/pages/home_admin_page.dart';
import 'package:oktm_service_mobile/pages/list_pengajuan.dart';
import 'package:oktm_service_mobile/pages/profile_page.dart';
import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() =>
      _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    const HomeAdminPage(),
    const ListPengajuan(),
    const ProfilePage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: _pages,
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        currentIndex: _currentIndex,
        backgroundColor: Color(0xFFF8F8F8),
        selectedColor: Color(0xFF9E0000),
        unSelectedColor: Color(0xFF999999),
        selectedIconSize: 30,
        unselectedIconSize: 30,
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index, 
              duration: const Duration(milliseconds: 300), 
              curve: Curves.ease);
          });
        },
        customBottomBarItems: [
          CustomBottomBarItems(
            icon: Icons.home_outlined,
            label: 'Beranda'
          ),
          CustomBottomBarItems(
            icon: Icons.list_outlined,
            label: 'Pengajuan'
          ),
          CustomBottomBarItems(
            icon: Icons.person_outline,
            label: 'Profil'
          )
        ],
      ),
    );
  }
}