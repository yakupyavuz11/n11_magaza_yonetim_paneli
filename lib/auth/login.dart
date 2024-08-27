import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:n11_magaza_yonetim_paneli/screens/change_password.dart';
import 'package:n11_magaza_yonetim_paneli/screens/dashboard_screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToTop() {
    _scrollController.animateTo(
      0.0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    // MediaQuery kullanarak ekran boyutlarını al
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).primaryColor,
            ),
            child: const Text('Yardım'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Yanlardan boşluk
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/images/logo.png', 
                  width: screenWidth * 0.6, 
                  height: screenHeight * 0.2, 
                ),
                const SizedBox(height: 16), 
                Text(
                  'Mağaza Yönetim Sistemi',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05, // Yazı boyutu ekran genişliğinin %5'i
                    fontWeight: FontWeight.bold, 
                    color: Theme.of(context).primaryColor, 
                  ),
                  textAlign: TextAlign.center, // Metni ortalamak için
                ),
                const SizedBox(height: 24), // Metin ve TextField'lar arasındaki boşluk
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Kullanıcı Adı',
                    prefixIcon: Icon(Icons.person, color: Colors.grey), // Sol ikon
                  ),
                ),
                const SizedBox(height: 16), // TextField'lar arasında boşluk
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    prefixIcon: Icon(Icons.lock, color: Colors.grey), // Sol ikon
                  ),
                  obscureText: true, // Şifreyi gizlemek için
                ),
                const SizedBox(height: 24), // TextField'lar ve buton arasındaki boşluk
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor, // Arka plan rengi
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                      vertical: 12.0,
                    ), 
                    minimumSize: const Size(double.infinity, 40), // Butonun yüksekliği
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)), // Köşeleri yuvarlamak için
                    ),
                  ),
                  child: const Text(
                    "Giriş Yap",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Kullanıcı Adımı ',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: screenWidth * 0.04, 
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            _scrollToTop(); // Sayfayı yukarı kaydır
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChangePasswordScreens(),
                              ),
                            );
                          },
                        ),
                        TextSpan(
                          text: 'veya ',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        TextSpan(
                          text: 'Şifremi Unuttum',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: screenWidth * 0.04, // Yazı boyutu ekran genişliğinin %4'ü
                            decoration: TextDecoration.underline, // Altı çizili stil
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            _scrollToTop(); // Sayfayı yukarı kaydır
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChangePasswordScreens(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
