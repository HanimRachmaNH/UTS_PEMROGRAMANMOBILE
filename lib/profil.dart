
import 'package:flutter/material.dart';
class Profil {
  String nama;
  String ttl;
  String alamat;
  String nohp;
  String email;
  String profilegithub;
  String riwayatpendidikan;
  String penghargaan;

  Profil({
    required this.nama,
    required this.ttl,
    required this.alamat,
    required this.nohp,
    required this.email,
    required this.profilegithub,
    required this.riwayatpendidikan,
    required this.penghargaan,
  });
}

List<Profil> profilList = [
  Profil(
    nama: 'Hanim Rachma Nur Haliza',
    ttl: 'Nganjuk, 21 Januari 2004',
    alamat: 'Nganjuk',
    nohp: '085704873018',
    email: '22082010010@student.upnjatim.ac.id',
    profilegithub: 'HanimRachmaNH',
    riwayatpendidikan: 'SMA',
    penghargaan: 'Juara 3 Bridge Tingkat Kabupaten',
  ),
  Profil(
    nama: 'Farelco Felda Akbar',
    ttl: 'Surabaya, 8 Agustus 2004',
    alamat: 'Surabaya',
    nohp: '085162660650',
    email: '22082010030@student.upnjatim.ac.id',
    profilegithub: 'FarelcoFelda',
    riwayatpendidikan: 'SMA',
    penghargaan: 'Juara 2 INT I2ASPO',
  )
];