import 'package:flutter/material.dart';
import 'package:n11_magaza_yonetim_paneli/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            child: Text('Yardım'),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding:
                  EdgeInsets.only(top: screenHeight * 0.15), // Yukarıdan boşluk
              child: Container(
                width: screenWidth * 0.8, // Ekran genişliğinin %80'i
                constraints: BoxConstraints(
                  maxHeight: screenHeight * 0.75, // Ekran yüksekliğinin %75'i
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo
                    Image.asset(
                      'assets/images/logo.png', // Logonun yolu
                      width: screenWidth *
                          0.6, // Logonun genişliği ekran genişliğinin %60'ı
                      height: screenHeight *
                          0.2, // Logonun yüksekliği ekran yüksekliğinin %20'si
                    ),
                    SizedBox(height: 16), // Logo ve metin arasındaki boşluk
                    Text(
                      'Mağaza Yönetim Sistemi',
                      style: TextStyle(
                        fontSize: screenWidth *
                            0.05, // Yazı boyutu ekran genişliğinin %5'i
                        fontWeight: FontWeight.bold, // Yazı kalınlığı
                        color: Theme.of(context)
                            .primaryColor, // Tema rengiyle yazı rengi
                      ),
                      textAlign: TextAlign.center, // Metni ortalamak için
                    ),
                    SizedBox(
                        height: 24), // Metin ve TextField'lar arasındaki boşluk
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Kullanıcı Adı',
                        prefixIcon:
                            Icon(Icons.person, color: Colors.grey), // Sol ikon
                      ),
                    ),
                    SizedBox(height: 16), // TextField'lar arasında boşluk
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Şifre',
                        prefixIcon:
                            Icon(Icons.lock, color: Colors.grey), // Sol ikon
                      ),
                      obscureText: true, // Şifreyi gizlemek için
                    ),
                    SizedBox(
                        height: 24), // TextField'lar ve buton arasındaki boşluk
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashboardScreen()));
                      },
                      child: const Text(
                        "Giriş Yap",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Theme.of(context).primaryColor, // Arka plan rengi
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.1,
                            vertical: 12.0), // İç boşlukları ayarla
                        minimumSize:
                            Size(double.infinity, 40), // Butonun yüksekliği
                      ).copyWith(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius
                                .zero, // Köşeleri kare yapmak için sıfır
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
