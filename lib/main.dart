import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Latihan',
      debugShowCheckedModeBanner: false,
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int _index = 0;

  final List<Widget> halaman = const [
    Center(
      child: Text(
        'Selamat Datang Di Aplikasi Saya',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nama: Bagus FerdianSyah', style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          Text('NIM: 1123150038', style: TextStyle(fontSize: 16)),
          SizedBox(height: 8),
          Text('Mata Kuliah: Aplikasi Mobile', style: TextStyle(fontSize: 16)),
        ],
      ),
    ),
    Center(
      child: Text(
        'Pengaturan belum dibuat',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18),
      ),
    ),
  ];

  void _gantiHalaman(int i) {
    setState(() {
      _index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HibbriOne'),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
      body: halaman[_index],
      floatingActionButton: Container(
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        child: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Tombol tambah ditekan!"),
                behavior: SnackBarBehavior.floating,
              ),
            );
          },
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: _gantiHalaman,
        selectedItemColor: Colors.lightBlue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Pengaturan'),
        ],
      ),
    );
  }
}