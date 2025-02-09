import 'package:flutter/material.dart';
import 'package:sigmadev_valentinoabinata_itcmobile/pages/succesful_page.dart';

class FormModerna extends StatelessWidget {
  final VoidCallback onSubmitted;

  const FormModerna({super.key, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    String? jenisKelamin;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Vaksin Moderna'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(
              'lib/images/Moderna.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(labelText: 'Alamat Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'NIK'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'Nama Lengkap'),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Jenis Kelamin'),
              items: const [
                DropdownMenuItem(value: 'Laki-laki', child: Text('Laki-laki')),
                DropdownMenuItem(value: 'Perempuan', child: Text('Perempuan')),
              ],
              onChanged: (value) {
                jenisKelamin = value;
              },
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'Tanggal Lahir'),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'Nomor Telepon'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(labelText: 'Domisili'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onSubmitted();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SuccessfulPage(),
                  ),
                );
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
