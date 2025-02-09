import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/form_campak.dart';

class DeskripsiCampak extends StatelessWidget {
  final VoidCallback onSubmitted;

  const DeskripsiCampak({super.key, required this.onSubmitted});

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
                'lib/images/campak.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Deskripsi Vaksin Campak',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vaksin Campak digunakan untuk mencegah infeksi virus campak yang sangat menular. '
              'Biasanya diberikan dalam bentuk vaksin kombinasi (MR atau MMR) yang juga melindungi dari rubella dan gondongan. '
              'Vaksin ini sangat efektif dalam mencegah penyebaran campak dan telah membantu mengurangi kasus penyakit ini secara global.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman form Antraks
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormCampak(onSubmitted: onSubmitted),
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
