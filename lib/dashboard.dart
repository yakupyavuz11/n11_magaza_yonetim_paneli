import 'package:flutter/material.dart';
import 'package:n11_magaza_yonetim_paneli/screens/home_screens.dart';
import 'package:n11_magaza_yonetim_paneli/screens/order_screens.dart';
import 'package:n11_magaza_yonetim_paneli/screens/other_screens.dart';
import 'package:n11_magaza_yonetim_paneli/screens/product_screens.dart';
import 'package:n11_magaza_yonetim_paneli/screens/questions_answer_screens.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreens(),
    const OrderScreens(),
    const ProductScreens(),
    const QuestionsAnswerScreens(),
    const OtherScreens(),
  ];

  final List<String> _titles = [
    'Ana Sayfa',
    'Sipariş',
    'Ürün',
    'Soru&Cevap',
    'Diğer',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_selectedIndex]),
        automaticallyImplyLeading: false, // Geri oklarını kaldırmak için
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Sipariş',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Ürün',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Soru&Cevap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Diğer',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor:
            Theme.of(context).primaryColor, // Seçili item rengini ayarlayın
        unselectedItemColor:
            Colors.grey, // Seçili olmayan item rengini ayarlayın
        type: BottomNavigationBarType
            .fixed, // Etiketlerin her zaman görünür olmasını sağlar
      ),
    );
  }
}
