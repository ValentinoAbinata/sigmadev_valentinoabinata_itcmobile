import 'package:flutter/material.dart';

class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sukses'),
        automaticallyImplyLeading: false, // Nonaktifkan tombol back
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Terima Kasih ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Sudah Mempercayai Layanan Kami',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 14),
            const Text(
              'Silahkan Menunggu Gmail yang Segera dikirim,',
              style: TextStyle(
                fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const Text(
              'Mohon Check Email Spam atau Sosial',
              style: TextStyle(
                fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Kembali ke my_home_page.dart
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Kembali ke Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}