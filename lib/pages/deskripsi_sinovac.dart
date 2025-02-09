import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/form_sinovac.dart';

class DeskripsiSinovac extends StatelessWidget {
  final VoidCallback onSubmitted;

  const DeskripsiSinovac({super.key, required this.onSubmitted});

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
                'lib/images/Sinovac.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Deskripsi Vaksin Sinovac',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Vaksin Sinovac, atau CoronaVac, adalah vaksin COVID-19 yang dikembangkan oleh perusahaan farmasi China, Sinovac Biotech. '
              'Vaksin ini menggunakan metode virus yang dilemahkan (inactivated virus) untuk merangsang sistem kekebalan tubuh. '
              'Sinovac telah digunakan secara luas di banyak negara dan efektif dalam mengurangi risiko gejala berat akibat COVID-19.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman form Antraks
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormSinovac(onSubmitted: onSubmitted),
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
