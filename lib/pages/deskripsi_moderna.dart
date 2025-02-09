import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/form_moderna.dart';

class DeskripsiModerna extends StatelessWidget {
  final VoidCallback onSubmitted;

  const DeskripsiModerna({super.key, required this.onSubmitted});

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
                'lib/images/Moderna.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Deskripsi Vaksin Moderna',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vaksin Moderna adalah vaksin COVID-19 berbasis mRNA yang dikembangkan oleh Moderna. '
              'Vaksin ini bekerja dengan merangsang tubuh untuk memproduksi protein spike yang memicu respons imun terhadap virus SARS-CoV-2. '
              'Moderna dikenal memiliki efikasi tinggi dalam mencegah COVID-19, terutama dalam melindungi dari gejala parah.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman form Antraks
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormModerna(onSubmitted: onSubmitted),
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
