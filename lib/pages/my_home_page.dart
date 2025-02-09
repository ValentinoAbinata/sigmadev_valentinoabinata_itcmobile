import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/deskripsi_antraks.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/deskripsi_astra_zeneca.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/deskripsi_campak.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/deskripsi_moderna.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/deskripsi_sinovac.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int antraksCounter = 1000;
  int astraZenecaCounter = 5000;
  int campakCounter = 2000;
  int modernaCounter = 3000;
  int sinovacCounter = 10000;

  void _incrementAntraksCounter() {
    setState(() {
      antraksCounter++;
    });
  }

  void _incrementAstraZenecaCounter() {
    setState(() {
      astraZenecaCounter++;
    });
  }

  void _incrementCampakCounter() {
    setState(() {
      campakCounter++;
    });
  }

  void _incrementModernaCounter() {
    setState(() {
      modernaCounter++;
    });
  }

  void _incrementSinovacCounter() {
    setState(() {
      sinovacCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey6,
      appBar: AppBar(
        title: const Text('SigmaDev'),
        backgroundColor: CupertinoColors.systemTeal,
        leading: Container(
          padding: const EdgeInsets.only(left: 5),
          child: Center(
            child: Image.asset(
              'lib/images/iconsigmaDev.png',
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          // Selamat Datang
          Image.asset(
            'lib/images/welcome_to_website.jpg',
            width: 600,
            height: 250,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Selamat Datang di SigmaDev',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'SigmaDev (Siaga Masyarakat Desa Vaksin) adalah aplikasi berbasis Flutter yang memudahkan masyarakat desa dalam mendaftar vaksin secara digital. Aplikasi ini menyediakan layanan vaksinasi terpercaya dengan berbagai jenis vaksin yang dapat dipilih sesuai kebutuhan. Pengguna dapat mengisi formulir pendaftaran dengan mudah, memastikan proses vaksinasi lebih terorganisir dan efisien. Dengan SigmaDev, akses terhadap layanan kesehatan menjadi lebih cepat, praktis, dan aman.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Kenapa Harus SigmaDev?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  '1. Keamanan Terjamin.\n'
                  '2. Akses Informasi yang Mudah.\n'
                  '3. Sumber Terpercaya.\n'
                  '4. Kemudahan Pembaruan Data.\n'
                  '5. Fokus pada Kesehatan Masyarakat.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16,0,0,3),
            child: Text('List Vaksin Tersedia',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: [
              // Vaksin Antraks
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeskripsiAntraks(
                        onSubmitted: _incrementAntraksCounter,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/antraks.jpeg',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Vaksin Antraks',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pasien: $antraksCounter',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              // Vaksin AstraZeneca
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeskripsiAstraZeneca(
                        onSubmitted: _incrementAstraZenecaCounter,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/AstraZeneca.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Vaksin AstraZeneca',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pasien: $astraZenecaCounter',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              // Vaksin Campak
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeskripsiCampak(
                        onSubmitted: _incrementCampakCounter,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/campak.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Vaksin Campak',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pasien: $campakCounter',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              // Vaksin Moderna
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeskripsiModerna(
                        onSubmitted: _incrementModernaCounter,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/Moderna.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Vaksin Moderna',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pasien: $modernaCounter',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              // Vaksin Sinovac
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DeskripsiSinovac(
                        onSubmitted: _incrementSinovacCounter,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CupertinoColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/images/Sinovac.png',
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Vaksin Sinovac',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Pasien: $sinovacCounter',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            color: CupertinoColors.separator,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              child: Center(
                child: Text(
                'Copyright © Your Company 2023',
                style: TextStyle(fontSize: 14.0),
                          ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
