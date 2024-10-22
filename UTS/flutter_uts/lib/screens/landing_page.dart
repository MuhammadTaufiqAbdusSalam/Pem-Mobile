import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar latar belakang dengan overlay gradien
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/panorama2.jpg'), // Gambar latar belakang
                fit: BoxFit.cover, // Mengatur gambar agar menutupi seluruh area
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), // Menggelapkan gambar latar belakang
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          // Konten di bagian depan
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Mengatur konten ke tengah secara vertikal
              crossAxisAlignment: CrossAxisAlignment.center, // Meratakan konten di tengah secara horizontal
              children: [
                // Teks sambutan dengan bayangan
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0), // Padding horizontal
                  child: Text(
                    'Selamat Datang di Aplikasi Saya!', // Teks sambutan
                    style: TextStyle(
                      fontSize: 40, // Ukuran font lebih besar untuk menarik perhatian
                      fontWeight: FontWeight.bold, // Ketebalan font
                      color: Colors.white, // Warna teks
                      letterSpacing: 2, // Jarak antar huruf
                      shadows: [
                        Shadow(
                          blurRadius: 15.0, // Ukuran kabur bayangan
                          color: Colors.black54, // Warna bayangan
                          offset: Offset(3.0, 3.0), // Posisi bayangan
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center, // Meratakan teks di tengah
                  ),
                ),
                SizedBox(height: 20), // Jarak antara teks sambutan dan deskripsi
                // Subtitle dengan teks deskriptif
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0), // Padding horizontal
                  child: Text(
                    'Tekan Tombol di Bawah Untuk Melanjutkan ke Halaman Login', // Teks deskripsi
                    style: TextStyle(
                      fontSize: 20, // Ukuran font lebih besar untuk meningkatkan keterbacaan
                      fontWeight: FontWeight.normal, // Ketebalan font
                      color: Colors.white70, // Warna teks
                    ),
                    textAlign: TextAlign.center, // Meratakan teks di tengah
                  ),
                ),
                SizedBox(height: 40), // Jarak sebelum tombol
                // Tombol untuk melanjutkan ke halaman login
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18), // Padding untuk tombol
                    backgroundColor: Colors.tealAccent, // Warna latar belakang tombol
                    foregroundColor: Colors.black, // Warna teks tombol
                    textStyle: TextStyle(
                      fontSize: 22, // Ukuran font untuk teks tombol
                      fontWeight: FontWeight.bold, // Ketebalan font
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Sudut melingkar pada tombol
                    ),
                    elevation: 10, // Efek elevasi untuk tampilan tombol
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login'); // Navigasi ke halaman login
                  },
                  child: Text('Login'), // Teks pada tombol
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
