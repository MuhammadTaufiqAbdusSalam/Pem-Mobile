import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context)?.settings.arguments as String; // Mengambil username dari argumen

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'), // Judul halaman
        backgroundColor: Colors.blueAccent, // Warna latar belakang app bar
      ),
      body: Stack(
        children: [
          // Gambar latar belakang dengan overlay gradien
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/panorama3.jpg'), // Gambar latar belakang
                fit: BoxFit.cover, // Menyesuaikan ukuran gambar
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), // Menggelapkan latar belakang
                  BlendMode.darken, // Mode penggabungan gelap
                ),
              ),
            ),
          ),
          // Konten di depan
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0), // Padding horizontal
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Mengatur posisi konten ke tengah
                crossAxisAlignment: CrossAxisAlignment.center, // Meratakan konten di tengah
                children: [
                  // Teks sambutan dengan bayangan
                  Text(
                    'Welcome, $username', // Menampilkan pesan sambutan dengan username
                    style: TextStyle(
                      fontSize: 36, // Ukuran font untuk teks sambutan
                      fontWeight: FontWeight.bold, // Menebalkan font
                      color: Colors.white, // Warna teks
                      letterSpacing: 1.5, // Jarak antar huruf
                      shadows: [
                        Shadow(
                          blurRadius: 10.0, // Radius kabur bayangan
                          color: Colors.black45, // Warna bayangan
                          offset: Offset(2.0, 2.0), // Posisi bayangan
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center, // Meratakan teks di tengah
                  ),
                  SizedBox(height: 40), // Jarak antara teks sambutan dan tombol
                  
                  // Tombol untuk pergi ke halaman Profil
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18), // Padding tombol
                      backgroundColor: Colors.tealAccent, // Warna latar belakang tombol
                      foregroundColor: Colors.black, // Warna teks tombol
                      textStyle: TextStyle(
                        fontSize: 22, // Ukuran font untuk teks tombol
                        fontWeight: FontWeight.bold, // Menebalkan font
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Membulatkan sudut tombol
                      ),
                      elevation: 10, // Bayangan tombol
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile', arguments: username); // Navigasi ke halaman Profil
                    },
                    child: Text('Go to Profile'), // Teks tombol
                  ),
                  SizedBox(height: 20), // Jarak antara tombol Profil dan tombol About
                  
                  // Tombol untuk pergi ke halaman About
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18), // Padding tombol
                      backgroundColor: Colors.lightBlueAccent, // Warna latar belakang tombol
                      textStyle: TextStyle(
                        fontSize: 22, // Ukuran font untuk teks tombol
                        fontWeight: FontWeight.bold, // Menebalkan font
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Membulatkan sudut tombol
                      ),
                      elevation: 10, // Bayangan tombol
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/about'); // Navigasi ke halaman About
                    },
                    child: Text('Go to About'), // Teks tombol
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
