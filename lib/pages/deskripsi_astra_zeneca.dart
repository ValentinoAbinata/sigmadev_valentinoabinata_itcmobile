import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/form_astra_zeneca.dart';

class DeskripsiAstraZeneca extends StatelessWidget {
  final VoidCallback onSubmitted;

  const DeskripsiAstraZeneca({super.key, required this.onSubmitted});

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
                'lib/images/AstraZeneca.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Deskripsi Vaksin AstraZeneca',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vaksin AstraZeneca adalah vaksin COVID-19 yang dikembangkan oleh Universitas Oxford dan AstraZeneca. '
              'Vaksin ini menggunakan teknologi viral vector untuk merangsang respons imun terhadap virus SARS-CoV-2. '
              'AstraZeneca efektif dalam mencegah gejala berat dan komplikasi akibat COVID-19.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman form Antraks
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FormAstraZeneca(onSubmitted: onSubmitted),
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
