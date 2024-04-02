import 'package:flutter/material.dart';

class Prodi {
  String NAMA;
  String PROFIL;
  String VISI;
  String MISI;
  String AKREDITASI;
  String KETUA;
  String DOSEN;
  String WEBSITE;
  String EMAIL;
  String PRESTASI;
  String headerImageName;

  Prodi({
    required this.NAMA,
    required this.PROFIL,
    required this.VISI,
    required this.MISI,
    required this.AKREDITASI,
    required this.KETUA,
    required this.DOSEN,
    required this.WEBSITE,
    required this.EMAIL,
    required this.PRESTASI,
    required this.headerImageName,
  });
}

List<Prodi> prodiList = [
  Prodi(
    NAMA: 'Bahasa Inggris untuk Komunikasi Bisnis dan Profesional',
    PROFIL:
        '''Program Studi Sarjana Terapan/D4 Bahasa Inggris untuk Komunikasi Bisnis dan Profesional merupakan salah satu program studi yang relatif baru di Indonesia. Program studi ini dirancang untuk menghasilkan lulusan yang memiliki kompetensi bahasa Inggris dalam bidang bisnis dan profesi lainnya. Program studi ini juga merupakan pengembangan dari program studi Pendidikan Bahasa dan/atau Sastra Inggris. Dengan tujuan yang lebih spesifik dan merupakan jawaban atas kebutuhan masyarakat di lapangan, maka program studi ini hadir dan menawarkan masa depan yang menjanjikan.''',
    VISI:
        '''Menjadi Program Studi Sarjana Terapan Bahasa Inggris yang unggul di bidang Komunikasi Bisnis dan Profesional, memiliki jiwa kompetitif bertaraf internasional serta berkarakter bela negara dalam menjungjung tinggi budaya''',
    MISI:
        '''Menyelenggarakan pendidikan akademik di bidang Bahasa Inggris untuk Komunikasi Bisnis dan Profesional secara teoritis dan aplikatif sesuai dengan perkembangan ilmu untuk menciptakan sumber daya manusia unggul dan kompetitif serta berkarakter Belanegara.
Menyelenggarakan penelitian dasar maupun terapan dalam pengembangan ilmu di bidang Bahasa Inggris untuk Komunikasi Bisnis dan Profesional serta memberikan dampak pada kemajuan disiplin akademik dan profesional.
Menyelenggarakan kegiatan pengabdian kepada masyarakat sesuai dengan bidang keilmuan Bahasa Inggris untuk Komunikasi Bisnis dan Profesional.
Menjalin kerjasama strategis baik dengan mitra nasional maupun internasional secara berkesinambungan dan meningkatkan kualitas kegiatan dan hasil tridharma perguruan tinggi yang berorientasikan pada mutu dan kemampuan bersaing.''',
    AKREDITASI: '''A''',
    KETUA: '''Laksmi Diana, S.S., M.Pd''',
    DOSEN: '''Wahyu Kyestiati Sumarno, S.Pd., M.Ed., M.Pd.
Avisatul Izzah, S.Pd., M.TESOL.
Dwi Wahyuningtyas, S.Pd., M.A. 
Kinanti Resmi Hayati S.Hum., M.A..''',
    WEBSITE: '''https://bispro.upnjatim.ac.id/''',
    EMAIL: '''bispro@upnjatim.ac.id''',
    PRESTASI: '''-''',
    headerImageName: 'assets/bispro.jpg',
  ),
  Prodi(
    NAMA: 'Administrasi Bisnis',
    PROFIL:
        'Program Studi Ilmu Administrasi Bisnis (Prodi Adbis) merupakan salah satu dari 4 (Lima) Progdi yang dimiliki  Fakultas Ilmu Sosial dan Ilmu Politik (FISIP), Universitas Pembangunan Nasional (UPN) “Veteran” Jawa Timur. Progdi Adbis berdiri pada tahun 1993 berdasarkan Surat Keputusan Menhankam Nomor Kep/01/II/1993, tanggal 27 Pebruari 1993 dengan status Negeri Kedinasan. Tanggal 29 Nopember 1994, UPN “Veteran” Jatim berubah statusnya menjadi Perguruan Tinggi Swasta dengan semua progdinya berstatus “Disamakan”.',
    VISI:
        'Program Studi Administrasi Bisnis Fakultas Ilmu Sosial dan Ilmu Politik UPN "Veteran" Jawa Timur (FISIP-UPNVJT) sebagai lembaga pengembangan ilmu dan teknologi dibidang Adminstrasi Bisnis yang Unggul, Terpercaya dan berkarakter Bela Negara pada tahun 2024',
    MISI:
        '''Menyelenggarakan pendidikan dan pengajaran di bidang Administrasi Bisnis, yang berkualitas, relevan, dan berorientasi pada kebutuhan masyarakat, bangsa, dan Negara.
Menyelenggarakan kegiatan penelitian di bidang Administrasi Bisnis utamanya pada bidang pemasaran, keuangan, sumber daya manusia, system informasi bisnis, operasibisnis, kebijakan bisnis serta mengimplementasikannya dalam pendidikan dan pengajaran serta pengabdian pada masyarakat.
Mengembangkan dan menguatkan hubungan kerjasama dengan berbagai pihak baik dengan pemerintah maupun lembaga swasta. Dalam dan luar negeri.''',
    AKREDITASI: '''A''',
    KETUA: '''Dr. Acep Samsudin.,S,Sos.,MM.,MA''',
    DOSEN: '''Nurul Azizah, S.AB.,M.AB
Yanda Bara Kusuma SAB., MAB
Dr.Ir. Rusdi Hidayat N, M.Si
Dr. Drs. Nurhadi, M.Si
R Yuniadi Rusdianto, M.Si
Dra. Ety Dwi Susanti, M.Si 
Dra.Sonja Andarini., M, Si 
Dr. Jojok Dwiridotjahjono, S.Sos.,M.Si
Wahyu F Ridho., SKM., MBA. 
Budi Prabowo, S.Sos.,M.M 
Dra.Lia Nirawati, M.Si 
Dra. Siti Ning Farida, M.Si.''',
    WEBSITE: '''https://adbis.upnjatim.ac.id/''',
    EMAIL: '''adbisupnvjt@gmail.com''',
    PRESTASI: '''JUARA 1 KATA BEREGU PUTRA PORPROV JATIM 2023
JUARA PERSAHABATAN DUTA PERLINDUNGAN ANAK JAWA TIMUR 2023''',
    headerImageName: 'assets/adbis.jpg',
  ),
  Prodi(
    NAMA: 'Administrasi Publik',
    PROFIL:
        'Keberadaan Fakultas Ilmu Sosial dan Ilmu Politik diawali dengan berdirinya Fakultas Ilmu Administrasi Negara dan Administrasi Niaga. Dalam perkembangan selanjutnya terbit Surat Keputusan Rektor UPN “Veteran” Jawa Timur Nomor : Skep/101/IX/2005 tanggal 6 Mei 2005 tentang Pergantian nama Fakultas Ilmu Administrasi UPN”Veteran” Jawa Timur menjadi Fakultas Ilmu Sosial dan Ilmu Politik. elanjutnya status UPN “Veteran” Jawa Timur yang semula berstatus sebagai Perguruan Tinggi kedinasan berubah menjadi Perguruan Tinggi Swasta dibawah Kopertis Wilayah VII sesuai dengan Surat Keputusan Bersama antara Menhankam dengan Mendikbud nomor : 0307/0/1994 KEP/10/XI/1994 Tanggal 29 Nopember 1995 tentang Peningkatan Pengabdian UPN “Veteran” melalui Pelaksanaan Keterkaitan dan Keterpaduan.',
    VISI:
        'Menjadi Program Studi Ilmu Administrasi Negara Unggul Berkarakter Bela Negara',
    MISI:
        '''Menyelenggarakan dan mengembangkan pendidikan bidang ilmu administrasi negara yang berkarakter bela negara.
Meningkatkan budaya riset dalam pengembangan ilmu administrasi negara yang berdayaguna untuk peningkatkan kesejahteraan masyarakat,
Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.
Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi ilmu administrasi negara,
Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di program studi ilmu administrasi negara''',
    AKREDITASI: '''A''',
    KETUA: '''Singgih Manggalou, S.IP., M.IP.''',
    DOSEN: '''Dr.Lukman Arif, M.Si
Dr.Liana Hettati, M.Si
DR.Ertien Rining N, M.Si
Dr.Agus Widiyarta, S.Sos, M.Si
Tukiman, S.Sos, M.Si
Drs.Ananta Prathama, M.Si
Dra.Sri Wibawani, M.Si
M.Agus Muljanto, S.E, M.Si
Arimurti Kriswibowo, S.IP, M.Si
Binti Azizatunnafi'ah, S.IAN, M.P.A''',
    WEBSITE: '''https://adneg.upnjatim.ac.id/''',
    EMAIL: '''adneg@upnjatim.ac.id''',
    PRESTASI: 'IISMA 2024 Vytautas Magnus University, Lithuania',
    headerImageName: 'assets/adpub.jpg',
  ),
  Prodi(
    NAMA: 'Hubungan Internasional',
    PROFIL:
        'Program Sarjana Hubungan Internasional didirikan pada tanggal 30 September 2011, di bawah Fakultas Ilmu Sosial dan Politik oleh Peraturan Menteri Pendidikan Nasional nomor 216/E/O/2011. Sebagai departemen yang relatif baru, IR dianugerahi status “B” (Good) oleh Indonesia National Accreditation Board (Badan Akreditasi Nasional Perguruan Tinggi / BAN-PT) Indonesia National Acreditation Council nomor 1071/1/1/SK/BAN-PT/Akred/S/IV/2019.',
    VISI:
        '''Mampu mencapai lulusan yang sangat kompetitif yang mampu membuat kontribusi profesional di bidang pekerjaan,
Mampu meningkatkan penyebaran pekerjaan ilmiah, seperti artikel ilmiah, penelitian dosen, dan implementasi kegiatan pelayanan masyarakat,
Mampu meningkatkan dan memperkuat kerjasama dan kemitraan dengan banyak pihak, baik pemerintah maupun swasta.''',
    MISI:
        '''Memberikan lulusan yang integritas, kepribadian, sensitivitas sosial, karakter yang kuat serta kompetensi ilmiah yang menguntungkan dan daya saing yang tinggi,
Menyebarkan karya ilmiah, baik artikel ilmiah dan hasil penelitian di bidang IR,
Meningkatkan dan memperkuat berbagai kerjasama dengan komunitas pembuatan kebijakan, untuk meningkatkan peran dan relevansi studi IR yang mampu memberikan kontribusi nyata kepada masyarakat, bangsa, dan negara, serta kepada masyarakat dunia.''',
    AKREDITASI: 'A',
    KETUA: '''Dra. Herlina Suksmawati, M.Si.''',
    DOSEN: '''Maria Indira Aryani, S.IP., M.Hub.Int 
Adiasri Putri Purbantina, Ph.D 
Megahnanda Alidyan Kresnawati, S.IP., M.IP. 
Prihandono Wibowo, S.Hub.Int., M.Hub.Int. 
Resa Rasyidah, S.Hub.Int., M.Hub.Int. 
Praja Firdaus Nuryananda, S.Hub.Int., M.Hub.Int. 
Renitha Dwi Hapsari, S.Hub.Int., M.Hub.Int. 
Ario Bimo Utomo, S.I.P., MIR. 
Akhmad Rifky Setya Anugrah, S.IP., M.Sc. 
alupi Anggraheni, S.I.P., MA. 
Yohanes Ivan Adi Kristianto, S.I.P., MA. 
Muhammad Dedy Yanuar, S.I.P., M.Sc.''',
    WEBSITE: '''https://hubint.upnjatim.ac.id/''',
    EMAIL: '''hubint@upnjatim.ac.id''',
    PRESTASI: '''IISMA 2024 University of Warsaw, Poland
IISMA 2024 University of Zagreb, Croatia''',
    headerImageName: 'assets/hi.jpg',
  ),
  Prodi(
    NAMA: 'Pariwisata',
    PROFIL:
        'Program Studi Pariwisata UPN “Veteran” Jawa Timur berdiri pada tanggal tanggal 8 April 2020 berdasarkan Keputusan Menteri Pendidikan dan Kebudayaan Republik Indonesia Nomor: 433/M/2020. Pendirian program studi ini untuk menjawab tantangan dan perkembangan industri pariwisata di Indonesia dan dunia.',
    VISI:
        'Menjadi Program Studi Pariwisata Unggulan yang Adaptif dan Inovatif Melalui Penyelenggaralan Pendidikan yang Berkarakter Bela Negara dan Berwawasan Lingkungan Dalam Mewujudkan Pariwisata Berkelanjutan dan Berorientasi Global.',
    MISI:
        '''Menyelenggarakan dan mengembangkan pendidikan bidang pariwisata yang adaptif, inovatif dan berkarakter bela negara,
Meningkatkan budaya riset dalam pengembangan ilmu pariwisata yang berdaya guna untuk peningkatan kesejahteraan masyarakat,
Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal,
Menyelenggarakan tata kelola yang bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran di program studi Pariwisata''',
    AKREDITASI: '''A''',
    KETUA: '''Dr. Yudiana Indriastuti, S.Sos., M.Si''',
    DOSEN: '''Praja Firdaus N., M.Hub.Int
Leily Suci Rahmatin, S.Par., M.Par
Sheidy Yudhiasta, S.Pd., M.Par 
Wahyuni, SST.Par., M.Par 
Dr. A. Muammar Alawi, M.Pd.I.
Joko Mijiarto, S.Hut., M.Si 
Fondina Gusriza, S.Pd., M.Sc 
ade Bambang Adnyana, S.ST.Par.,M.Par 
Garsione Agni Andrea. S.Pd., M.Sc 
Puguh Andhi Setiawan, S.Tr.Par 
Cika Ayu Safitri, A.md. M ''',
    WEBSITE: '''https://pariwisata.upnjatim.ac.id/''',
    EMAIL: '''pariwisata@upnjatim.ac.id''',
    PRESTASI: '''JUARA 3 TOUR PACKAGE COMPETITION MARINE TOURISM FEST 2023
JUARA 3 LOMBA KARYA TULIS ILMIAH (NAWASENA TOURISM EXPO 2022)
JUARA 2 DESTINATION MARKETING PLAN COMPETITION
POSISI 10 BESAR GUIDING COMPETITION BTPC
PEMENANG FAVORIT LOMBA VOICE OVER BTPC''',
    headerImageName: 'assets/pariwisata.jpg',
  ),
];