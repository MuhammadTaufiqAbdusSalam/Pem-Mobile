import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String username = ModalRoute.of(context)?.settings.arguments as String; // Mengambil argumen username dari route

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'), // Judul halaman
        backgroundColor: Colors.blueAccent, // Warna latar belakang app bar
      ),
      body: Stack(
        children: [
          // Gambar latar belakang dengan overlay gradient
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/panorama.jpg'), // Gambar latar belakang
                fit: BoxFit.cover, // Mengatur gambar agar menutupi seluruh area
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), // Menggelapkan latar belakang
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          
          // Konten profil
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Avatar dengan bayangan
                CircleAvatar(
                  radius: 60, // Radius untuk lingkaran avatar
                  backgroundImage: AssetImage('assets/profil.jpg'), // Gambar untuk avatar
                  backgroundColor: Colors.transparent, // Warna latar belakang transparan
                ),
                
                SizedBox(height: 20), // Jarak antara avatar dan username
                
                // Menampilkan username dengan gaya teks yang lebih baik
                Text(
                  username, // Nama pengguna
                  style: TextStyle(
                    fontSize: 30, // Ukuran font untuk username
                    fontWeight: FontWeight.bold, // Ketebalan font
                    color: Colors.white, // Warna teks
                    letterSpacing: 1.2, // Spasi antara huruf
                    shadows: [
                      Shadow(
                        blurRadius: 8.0, // Ukuran kabur bayangan
                        color: Colors.black45, // Warna bayangan
                        offset: Offset(2.0, 2.0), // Posisi bayangan
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 20), // Jarak antara username dan card
                
                // Card sederhana untuk dekorasi
                Card(
                  elevation: 10, // Elevasi untuk efek bayangan
                  color: Colors.white.withOpacity(0.8), // Warna latar belakang card
                  margin: EdgeInsets.symmetric(horizontal: 40), // Margin horizontal untuk card
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // Sudut melingkar pada card
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0), // Padding untuk konten dalam card
                    child: Text(
                      "Selamat Datang Di Halaman Profil Anda", // Teks dalam card
                      textAlign: TextAlign.center, // Pusatkan teks
                      style: TextStyle(
                        fontSize: 18, // Ukuran font untuk teks card
                        color: Colors.black87, // Warna teks
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
