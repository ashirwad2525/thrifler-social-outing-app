import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../core/constants/app_colors.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() =>
      _MainNavigationScreenState();
}

class _MainNavigationScreenState
    extends State<MainNavigationScreen> {

  int currentIndex = 0;

  final List<Widget> pages = [

    const HomeScreen(),

    const Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Text("Plans"),
      ),
    ),

    const Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Text("Chat"),
      ),
    ),

    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      extendBody: true,

      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),

      bottomNavigationBar: Container(

        margin: const EdgeInsets.fromLTRB(
          16,
          0,
          16,
          18,
        ),

        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(28),

          border: Border.all(
            color: Colors.white.withOpacity(0.03),
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.18),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),

        child: SalomonBottomBar(

          currentIndex: currentIndex,

          onTap: (i) {
            setState(() {
              currentIndex = i;
            });
          },

          items: [

            SalomonBottomBarItem(
              icon: const Icon(Iconsax.home_2),
              title: const Text("Home"),
              selectedColor: AppColors.primary,
            ),

            SalomonBottomBarItem(
              icon: const Icon(Iconsax.calendar),
              title: const Text("Plans"),
              selectedColor: AppColors.primary,
            ),

            SalomonBottomBarItem(
              icon: const Icon(Iconsax.message),
              title: const Text("Chat"),
              selectedColor: AppColors.primary,
            ),

            SalomonBottomBarItem(
              icon: const Icon(Iconsax.user),
              title: const Text("Profile"),
              selectedColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}