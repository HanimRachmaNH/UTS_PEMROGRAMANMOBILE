import 'package:flutter/material.dart';
import 'profil.dart';

class ProfilDetailPage extends StatelessWidget {
  final Profil profil;

  const ProfilDetailPage({Key? key, required this.profil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profil.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: ${profil.nama}'),
            Text('TTL: ${profil.ttl}'),
            Text('Alamat: ${profil.alamat}'),
            Text('NoHP: ${profil.nohp}'),
            Text('Email: ${profil.email}'),
            Text('Profil Github: ${profil.profilegithub}'),
            Text('Riwayat Pendidikan: ${profil.riwayatpendidikan}'),
            Text('Penghargaan: ${profil.penghargaan}'),
          ],
        ),
      ),
    );
  }
}