import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:n11_magaza_yonetim_paneli/component/card_widget.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Yatay kaydırılabilir kartlar
          Container(
            height: 100, // Yatay liste için yeterli yükseklik
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(4, (index) {
                // Kartlar için renkler ve metinler
                final colors = [Colors.grey[200]!, Colors.grey[200]!, Colors.grey[200]!, Colors.grey[200]!];
                final texts = ['Cevap Bekleyen Soru', 'Son 1 Haftalık Sipariş', 'Soru Detay', 'Ürün Detay'];

                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CardWidget(
                    height: 70,
                    width: 150,
                    color: colors[index],
                    text: texts[index],
                  ),
                );
              }),
            ),
          ),
    ]  ),
            );
}
}