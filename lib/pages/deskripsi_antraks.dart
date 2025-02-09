import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/form_antraks.dart';

class DeskripsiAntraks extends StatelessWidget {
  final VoidCallback onSubmitted;

  const DeskripsiAntraks({super.key, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SigmaDev'),
        backgroundColor: CupertinoColors.systemTeal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'lib/images/antraks.jpeg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Deskripsi Vaksin Antraks',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vaksin Antraks adalah vaksin yang digunakan untuk mencegah penyakit antraks, '
              'yang disebabkan oleh bakteri Bacillus anthracis. Vaksin ini sangat efektif '
              'untuk melindungi individu yang berisiko tinggi terpapar bakteri ini.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman form Antraks
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormAntraks(onSubmitted: onSubmitted),
                  ),
                );
              },
              child: const Text('Daftar Sekarang'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.separator,
        child: Center(
          child: Text(
            'Copyright © Your Company 2023',
            style: TextStyle(fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
