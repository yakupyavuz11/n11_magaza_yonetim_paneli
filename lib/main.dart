import 'package:flutter/material.dart';
import 'package:n11_magaza_yonetim_paneli/auth/login.dart';
import 'package:n11_magaza_yonetim_paneli/screens/home_screens.dart';
import 'package:n11_magaza_yonetim_paneli/theme.dart';
import 'screens/dashboard_screens.dart'; // Dashboard sayfası

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'n11 Mağaza Panel',
      theme: customTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/home': (context) => const HomeScreens(),
        // Diğer sayfaları buraya ekleyin
      },
    );
  }
}
