import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController(); // Kontroler untuk field username
  final _passwordController = TextEditingController(); // Kontroler untuk field password
  String _errorMessage = ''; // Pesan kesalahan

  void _login() {
    String username = _usernameController.text; // Mengambil teks dari kontroler username
    String password = _passwordController.text; // Mengambil teks dari kontroler password

    if (username == 'admin' && password == 'admin123') {
      // Jika username dan password benar
      Navigator.pushNamed(context, '/home', arguments: username); // Navigasi ke halaman utama
    } else {
      // Jika username atau password salah
      setState(() {
        _errorMessage = 'Invalid username or password'; // Menampilkan pesan kesalahan
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/panorama2.jpg'), // Gambar latar belakang
            fit: BoxFit.cover, // Mengatur gambar agar menutupi seluruh area
          ),
        ),
        padding: EdgeInsets.all(16.0), // Padding untuk seluruh konten
        child: Center(
          child: SingleChildScrollView( // Membuat konten dapat digulir jika terlalu panjang
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Login', // Judul halaman login
                  style: TextStyle(
                    fontSize: 40, // Ukuran font untuk judul
                    fontWeight: FontWeight.bold, // Ketebalan font
                    color: Colors.white, // Warna teks
                    shadows: [
                      Shadow(
                        blurRadius: 10.0, // Ukuran kabur bayangan
                        color: Colors.black54, // Warna bayangan
                        offset: Offset(2.0, 2.0), // Posisi bayangan
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40), // Jarak antara judul dan field username
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    hintText: 'Username', // Teks petunjuk untuk field username
                    filled: true,
                    fillColor: Colors.white, // Warna latar belakang field
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), // Sudut melingkar pada border
                  ),
                ),
                SizedBox(height: 20), // Jarak antara field username dan field password
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password', // Teks petunjuk untuk field password
                    filled: true,
                    fillColor: Colors.white, // Warna latar belakang field
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)), // Sudut melingkar pada border
                  ),
                  obscureText: true, // Menyembunyikan teks password
                ),
                SizedBox(height: 20), // Jarak sebelum tombol login
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Padding untuk tombol
                    backgroundColor: Colors.blueAccent, // Warna latar belakang tombol
                    textStyle: TextStyle(fontSize: 20), // Ukuran font untuk teks tombol
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), // Sudut melingkar pada tombol
                  ),
                  onPressed: _login, // Memanggil fungsi login saat tombol ditekan
                  child: Text('Login'), // Teks pada tombol
                ),
                SizedBox(height: 10), // Jarak antara tombol login dan tombol kembali
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Padding untuk tombol
                    backgroundColor: Colors.redAccent, // Warna latar belakang tombol
                    textStyle: TextStyle(fontSize: 20), // Ukuran font untuk teks tombol
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), // Sudut melingkar pada tombol
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Kembali ke halaman sebelumnya
                  },
                  child: Text('Back to Landing'), // Teks pada tombol
                ),
                if (_errorMessage.isNotEmpty) // Menampilkan pesan kesalahan jika ada
                  Padding(
                    padding: EdgeInsets.only(top: 8.0), // Jarak atas untuk pesan kesalahan
                    child: Text(
                      _errorMessage, // Menampilkan pesan kesalahan
                      style: TextStyle(color: Colors.red), // Warna teks untuk pesan kesalahan
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
