import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Page'), // Judul halaman About
        backgroundColor: Colors.blueAccent, // Warna latar belakang app bar
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/panorama.jpg'), // Gambar latar belakang
            fit: BoxFit.cover, // Menyesuaikan ukuran gambar
          ),
        ),
        padding: EdgeInsets.all(16.0), // Padding di seluruh container
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Mengatur posisi konten ke tengah
            crossAxisAlignment: CrossAxisAlignment.center, // Meratakan konten di tengah
            children: [
              // Teks deskripsi aplikasi dengan kontras yang lebih baik
              Text(
                'Ini Adalah Halaman About Dari Aplikasi Yang Saya Buat',
                style: TextStyle(
                  fontSize: 24, // Ukuran font lebih besar
                  color: Colors.yellowAccent, // Warna teks lebih cerah
                  fontWeight: FontWeight.bold, // Menebalkan font
                  shadows: [Shadow(blurRadius: 5.0, color: Colors.black54)], // Bayangan untuk teks
                ),
                textAlign: TextAlign.center, // Meratakan teks di tengah
              ),
              SizedBox(height: 20), // Jarak antara teks dan elemen berikutnya
              // Teks tambahan dengan informasi lebih lanjut
              Text(
                'Aplikasi ini dirancang untuk membantu pengguna dalam mengelola data dengan lebih efektif.',
                style: TextStyle(
                  fontSize: 18, // Ukuran font untuk teks tambahan
                  color: Colors.white, // Warna teks
                  fontWeight: FontWeight.w500, // Mengatur ketebalan font
                  shadows: [Shadow(blurRadius: 3.0, color: Colors.black26)], // Menambahkan bayangan
                ),
                textAlign: TextAlign.center, // Meratakan teks di tengah
              ),
              SizedBox(height: 40), // Jarak sebelum tombol kembali
              // Tombol untuk kembali ke halaman sebelumnya
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12), // Padding untuk tombol
                  backgroundColor: Colors.blueAccent, // Warna latar belakang tombol
                  textStyle: TextStyle(fontSize: 18), // Ukuran font untuk teks tombol
                ),
                onPressed: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                },
                child: Text('Kembali'), // Teks tombol
              ),
            ],
          ),
        ),
      ),
    );
  }
}
