import 'package:flutter/material.dart';
import 'package:bioapp/widgets/custom_sidebar.dart';

class ProtoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text('ProtoFall'),
      ),
      drawer: CustomSidebar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionTitle('CV'),
              Divider(color: Colors.grey[600]),
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
              Divider(color: Colors.grey[600]),
              SizedBox(height: 8),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridItem(context, 'Desain', 'https://example.com'),
                  _buildGridItem(context, 'Sertifikat Bahasa',
                      'https://example.com'),
                  _buildGridItem(context, 'Hasil LIDM', 'https://example.com'),
                  _buildGridItem(context, 'Web', 'https://example.com'),
                  _buildGridItem(context, 'Artikel', 'https://example.com'),
                  _buildGridItem(
                      context, 'Foto Video Editing', 'https://example.com'),
                  _buildGridItem(context, 'Gambar', 'https://example.com'),
                  _buildGridItem(context, '...', 'https://example.com'),
                  _buildGridItem(context, '...', 'https://example.com'),
                ],
              ),
              SizedBox(height: 16),
              _buildSubsectionTitle('Media Sosial'),
              Divider(color: Colors.grey[600]),
              SizedBox(height: 8),
              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  _buildGridItem(
                      context, 'Instagram', 'https://instagram.com/fllryan_'),
                  _buildGridItem(
                      context, 'LinkedIn', 'https://instagram.com/fllryan_'),
                  _buildGridItem(
                      context, 'Akun Lainnya', 'https://instagram.com/fllryan_'),
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

  void _launchURL(BuildContext context, String url) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening $url')),
    );
  }
}
