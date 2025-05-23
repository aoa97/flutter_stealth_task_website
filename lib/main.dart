import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: AppColors.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.dark,
          foregroundColor: AppColors.light,
        ),
      ),
      theme: ThemeData.light(),
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
