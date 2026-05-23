import 'package:flutter/material.dart';
import 'package:thrifler/features/home/home_screen.dart';
import 'package:thrifler/features/navigation/main_navigation_screen.dart';
import 'package:thrifler/features/profile/profile_screen.dart';

import 'core/theme/app_theme.dart';
import 'features/home/home_screen.dart';
import 'features/navigation/main_navigation_screen.dart';
void main() {
  runApp(const TriflerApp());
}

class TriflerApp extends StatelessWidget {
  const TriflerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: AppTheme.darkTheme,

      home: const MainNavigationScreen(),
    );
  }
}