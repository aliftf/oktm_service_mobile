import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';

class CustomAdminBottomNavigationBar extends StatelessWidget {
  const CustomAdminBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLineIndicatorBottomNavbar(
        backgroundColor: Color(0xFFF8F8F8),
        selectedColor: Color(0xFF9E0000),
        unSelectedColor: Color(0xFF999999),
        selectedIconSize: 30,
        unselectedIconSize: 30,
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        onTap: (index) => print('Tapped on $index'),
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
      );
  }
}