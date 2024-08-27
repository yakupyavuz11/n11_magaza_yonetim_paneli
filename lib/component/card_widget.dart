import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final String text;

  const CardWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0), // Köşeleri yuvarlama
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2), // Kartın gölgesi
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Kartın içindeki boşluk
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black, // Metin rengi
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center, // Metni ortala
          ),
        ),
      ),
    );
  }
}
