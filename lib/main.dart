import 'package:flutter/material.dart';
import 'profil.dart';
import 'profil_detail.dart';
import 'prodi.dart';
import 'prodi_detail.dart';

void main() {
  runApp(const FisipUpnApp());
}

class FisipUpnApp extends StatelessWidget {
  const FisipUpnApp({Key? key}) : super(key: key);

  static const MaterialColor upnBlue = MaterialColor(
    0xFF1B396A,
    <int, Color>{
      50: Color(0xFF1B396A),
      100: Color(0xFF1B396A),
      200: Color(0xFF1B396A),
      300: Color(0xFF1B396A),
      400: Color(0xFF1B396A),
      500: Color(0xFF1B396A),
      600: Color(0xFF1B396A),
      700: Color(0xFF1B396A),
      800: Color(0xFF1B396A),
      900: Color(0xFF1B396A),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas FISIP UPN',
      theme: ThemeData(
        primarySwatch: upnBlue,
      ),
      home: const HomePage(title: 'Profil Fakultas FISIP UPN'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    int pariwisataIndex =
        prodiList.indexWhere((prodi) => prodi.NAMA == 'Pariwisata');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(
            255, 255, 231, 19), // Atur warna latar belakang menjadi kuning
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10), // Spacer
            Text(title),
            const SizedBox(height: 5), // Spacer
            Text(
              'Fakultas Ilmu Sosial dan Ilmu Politik merupakan salah satu dari 7 fakultas di UPN "Veteran" Jawa Timur.'
              'Yang terdiri dari program studi:',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              prodiList.length,
              (index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ProdiDetailPage(prodi: prodiList[index]),
                          ),
                        );
                      },
                      child: buildProgramStudiCard(prodiList[index], index),
                    ),
                    if (index == pariwisataIndex)
                      ...profilList.asMap().entries.map((entry) {
                        var profil = entry.value;
                        if (profil.nama == 'Hanim Rachma Nur Haliza') {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProfilDetailPage(profil: profil),
                                ),
                              );
                            },
                            child: buildProfilCard(profil, 'assets/hanim.jpg',
                                'BIODATA ANGGOTA 1'),
                          );
                        } else if (profil.nama == 'Farelco Felda Akbar') {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ProfilDetailPage(profil: profil),
                                ),
                              );
                            },
                            child: buildProfilCard(profil, 'assets/farel.jpg',
                                'BIODATA ANGGOTA 2'),
                          );
                        }
                        return SizedBox(); // Tambahkan widget kosong untuk profil selain Hanim dan Farel
                      }),
                  ],
                );
              },
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 189, 189, 189),
    );
  }
}

Widget buildProfilCard(Profil profil, String imageAsset, String biodataTitle) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imageAsset),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20), // Spacer
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5), // Spacer
                Text(
                  biodataTitle,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildProgramStudiCard(Prodi prodi, int index) {
  List<String> images = [
    'assets/bispro.jpg',
    'assets/adbis.jpg',
    'assets/adpub.jpg',
    'assets/hi.jpg',
    'assets/pariwisata.jpg',
  ];

  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            images[index],
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 20), // Spacer
          Text(
            prodi.NAMA,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}