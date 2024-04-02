import 'package:flutter/material.dart';
import 'prodi.dart'; // Mengimpor file prodi.dart
import 'dart:html' as html;

class ProdiDetailPage extends StatelessWidget {
  final Prodi prodi;
  
  const ProdiDetailPage({Key? key, required this.prodi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Menghapus tombol kembali bawaan
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Image.asset(
                '${prodi.headerImageName}',
                height: 170, // Ubah tinggi gambar sesuai kebutuhan
                fit: BoxFit.contain, // Tetapkan untuk mempertahankan proporsi gambar
              ),
              SizedBox(width: 8), // Jarak antara gambar dan judul
              Text(
                prodi.NAMA,
                style: TextStyle(fontSize: 20), // Ukuran font judul
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        // Tambahkan SingleChildScrollView di sini
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDetailItem('Profil:', prodi.PROFIL),
                  _buildDetailItem('Visi:', prodi.VISI),
                  _buildDetailItem('Misi:', prodi.MISI),
                  _buildDetailItem('Akreditasi:', prodi.AKREDITASI),
                  _buildDetailItem('Ketua Program Studi:', prodi.KETUA),
                  _buildDetailItem('Dosen:', prodi.DOSEN),
                  GestureDetector(
                    onTap: () {
                      _openWebsite(prodi.WEBSITE);
                    },
                    child: _buildDetailItem(
                      'Laman Website Resmi:',
                      prodi.WEBSITE,
                      isClickable: true,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _openEmailApp(prodi.EMAIL);
                    },
                    child: _buildDetailItem(
                      'Email Prodi:',
                      prodi.EMAIL,
                      isClickable: true,
                    ),
                  ),
                  _buildDetailItem('Prestasi Mahasiswa:', prodi.PRESTASI),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String content,
      {bool isClickable = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(), // Tercetak berhuruf besar
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          title == 'Misi:'
              ? _buildMisiList(content)
              : title == 'Dosen:'
              ? _buildDosenList(content)
              : GestureDetector(
            onTap: () {
              if (title == 'Laman Website Resmi:') {
                _openWebsite(content);
              } else if (title == 'Email Prodi:') {
                _openEmailApp(content);
              }
            },
            child: Text(
              content,
              style: TextStyle(
                color: isClickable
                    ? Colors.blue
                    : null, // Warna teks menjadi biru jika dapat diklik
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMisiList(String content) {
    List<String> misiList = content.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: misiList
          .asMap()
          .entries
          .map(
            (entry) => Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${entry.key + 1}. ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  entry.value,
                  // Gaya teks untuk daftar misi
                ),
              ),
            ],
          ),
        ),
      )
          .toList(),
    );
  }

  Widget _buildDosenList(String content) {
    List<String> dosenList = content.split('\n');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: dosenList
          .asMap()
          .entries
          .map(
            (entry) => Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${entry.key + 1}. ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Text(
                  entry.value,
                  // Gaya teks untuk daftar dosen
                ),
              ),
            ],
          ),
        ),
      )
          .toList(),
    );
  }

  // Fungsi untuk membuka laman website
  void _openWebsite(String url) {
    html.window.open(url, '_blank');
  }

  // Fungsi untuk membuka aplikasi email
  void _openEmailApp(String email) {
    html.window.open('mailto:$email', '_blank');
  }
}
