import 'package:flutter/material.dart';

class ChangePasswordScreens extends StatefulWidget {
  const ChangePasswordScreens({super.key});

  @override
  State<ChangePasswordScreens> createState() => _ChangePasswordScreensState();
}

class _ChangePasswordScreensState extends State<ChangePasswordScreens> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close), // Kapatma simgesi
          onPressed: () {
            Navigator.pop(context); // Önceki sayfaya dön
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Sol hizalama
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Şifrenizi hatırlatacak bir e-posta göndereceğiz.",
              style: TextStyle(fontSize: 16), // Yazı boyutu ekleyebilirsiniz
            ),
            const SizedBox(height: 30),

            // E-Posta TextField
            const TextField(
              decoration: InputDecoration(
                labelText: 'E-Posta',
                prefixIcon: Icon(Icons.email, color: Colors.grey), // Sol ikon
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              "Hesabınıza ait bir e-posta adresi giriniz.",
              style: TextStyle(fontSize: 12), 
              textAlign: TextAlign.left, 
            ),
            const SizedBox(height: 24), 


            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    title: const Text('E-Posta Gönderildi'),
                    content: const Text('Şifre sıfırlama e-postası gönderildi.'),
                    actions: [
                      
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Diyalogdan çık
                        },
                        child: const Text('Tamam',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor, 
        
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.3,
                  vertical: 12.0,
                ), 
                minimumSize: const Size(double.infinity, 40), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Text(
                "Gönder", 
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
