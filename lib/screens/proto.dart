import 'package:flutter/material.dart';
import 'package:bioapp/widgets/custom_sidebar.dart';
import 'package:url_launcher/url_launcher.dart';

class ProtoPage extends StatefulWidget {
  @override
  State<ProtoPage> createState() => _ProtoPageState();
}

class _ProtoPageState extends State<ProtoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: IconThemeData(
          color: Colors.blue, // Warna ikon garis tiga
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text(
          'ProtoFall',
          style: TextStyle(
            color: Colors.blue, // Warna teks ProtoFall
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: CustomSidebar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('CV'),
              Divider(color: Colors.blue[600]),
              SizedBox(height: 16),
              _buildSubsectionTitle('Pendidikan'),
              SizedBox(height: 8),
              _buildTextContent(
                  '2019 - 2022\nIlmu Pengetahuan Alam - SMAN 7 Kerinci, Jambi'),
              SizedBox(height: 8),
              _buildTextContent(
                  '2022 - Sekarang\nS1 Ilmu Komputer - Universitas Pakuan, Bogor'),
              SizedBox(height: 16),
              _buildSubsectionTitle('Skill'),
              SizedBox(height: 8),
              _buildTextContent(
                  'Ui/UX Desainer\nJunior Website Developer\nMenulis\nEditing Video & Foto\nPrompter Kode\nJunior Front End Developer\nMenggambar\nBahasa Inggris Tingkat Menengah'),
              SizedBox(height: 16),
              _buildSubsectionTitle('Pengalaman Kegiatan dan Organisasi'),
              SizedBox(height: 8),
              _buildTextContent(
                  'Lomba Inovasi Digital Mahasiswa (LIDM) 2024\nKomisioner Komisi Pemilihan Umum (KPU FMIPA) 2023\nAnggota Badan Legislatif Mahasiswa (BLM FMIPA) 2024\nFront End Projek Website HIMAKOM 2024\nMenyelesaikan Beberapa Projek Website Praktikum\nMenyelesaikan Beberapa Projek Website Mata Kuliah\nMenyelesaikan Pembuatan Aplikasi Mata Kuliah'),
              SizedBox(height: 16),
              _buildSubsectionTitle('Dokumentasi'),
              Divider(color: Colors.blue[600]),
              SizedBox(height: 8),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridItem(context, 'Desain', 'https://drive.google.com/drive/folders/1CgJEYXE4g-VvO43ggm2O0kDn-hNpHKJN'),
                  _buildGridItem(context, 'Sertifikat Bahasa',
                      'https://drive.google.com/drive/folders/1CulkWJReMPeaVWRinOXWfiogGw3n6Can'),
                  _buildGridItem(context, 'Hasil LIDM', 'https://drive.google.com/drive/folders/1Cz3-jEHiurbND-_rGSY2wyLa204Be6lf'),
                  _buildGridItem(context, 'Web', 'https://drive.google.com/drive/folders/1CzDW8ptbpdEGAUFd_7ygZcQzAX_BYsrg'),
                  _buildGridItem(context, 'Artikel', 'https://drive.google.com/drive/folders/1D-n1JvFjk84SjULAYZBqVZvM4qav5p7Q'),
                  _buildGridItem(
                      context, 'Foto Video Editing', 'https://drive.google.com/drive/folders/1D2ZmbLSSdwU8PutqL8bfNqyIEUv1X5vK'),
                  _buildGridItem(context, 'Gambar', 'https://drive.google.com/drive/folders/1D5806CLkWTvh0B_4LKhie6nK31R1vuuM'),
                  _buildGridItem(context, '-', 'https://drive.google.com/drive/folders/1DDGLaHwkeFF4R8fU5vaMav3R_CduHW7k'),
                  _buildGridItem(context, '-', 'https://drive.google.com/drive/folders/1DDGLaHwkeFF4R8fU5vaMav3R_CduHW7k'),
                ],
              ),
              SizedBox(height: 16),
              _buildSubsectionTitle('Media Sosial'),
              Divider(color: Colors.blue[600]),
              SizedBox(height: 8),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridItem(
                      context, 'Instagram', 'https://www.instagram.com/fllryan_/profilecard/?igsh=dWI3aTc1dTBsa3k2'),
                  _buildGridItem(
                      context, 'LinkedIn', 'https://www.linkedin.com/in/falleryan46?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app'),
                  _buildGridItem(
                      context, 'Akun Lainnya', 'https://r8qs.adj.st/appinvites/TeamMatch%2f9Jq%2fOW9sX1mxztl9HvABacwmGaihAXLkaj7VLtXKrWweGJuawFCZKKYBRbb19uzF?adjust_t=q0le9d_ynoul8&adjust_deeplink=mobilelegends%3a%2f%2fappinvites%2fTeamMatch%2f9Jq%2fOW9sX1mxztl9HvABacwmGaihAXLkaj7VLtXKrWweGJuawFCZKKYBRbb19uzF'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildSubsectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildTextContent(String content) {
    return Text(
      content,
      style: TextStyle(color: Colors.white),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, String url) {
    return GestureDetector(
      onTap: () {
        _launchURL(context, url);
      },
      child: Container(
        margin: EdgeInsets.all(4),
        padding: EdgeInsets.all(16),
        color: Colors.grey[800],
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(BuildContext context, String url) async {
  final Uri uri = Uri.parse(url);
      try {
        if (!await launchUrl(
          uri,
          mode: LaunchMode.externalApplication, // Gunakan mode ini untuk membuka di browser eksternal
        )) {
          throw 'Could not launch $url';
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Gagal membuka $url')),
        );
      }
  }
}
