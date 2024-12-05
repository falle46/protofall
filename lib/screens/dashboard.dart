import 'package:flutter/material.dart';
import 'package:bioapp/widgets/custom_sidebar.dart';
import 'package:bioapp/screens/proto.dart';

class Dashboard extends StatelessWidget {
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
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'lib/assets/images/fall.png',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muhammad Falleryan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Semester 5, Ilmu Komputer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: FloatingActionButton(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.info),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProtoPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // About Me Section
Card(
  color: Colors.grey[850],
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: MediaQuery.of(context).size.width - 32, // Sesuaikan dengan layar
    constraints: BoxConstraints(
      minHeight: 150, // Tinggi minimum
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tentang Saya',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Saya adalah mahasiswa Ilmu Komputer di Universitas Pakuan yang memiliki minat besar dalam teknologi, '
          'matematika, dan sains. Selain fokus dalam bidang akademik, saya juga aktif dalam organisasi mahasiswa, '
          'serta memiliki pengalaman di bidang desain grafis, pengembangan website, dan aplikasi.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
),

// Personal Data Section
Card(
  color: Colors.grey[850],
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: MediaQuery.of(context).size.width - 32, // Sama dengan Tentang Saya
    constraints: BoxConstraints(
      minHeight: 150, // Tinggi minimum yang sama
    ),
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Data Diri',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Nama : Muhammad Falleryan\n'
          'NPM : 065122185\n'
          'Program Studi : Ilmu Komputer\n'
          'Universitas : Universitas Pakuan\n'
          'Angkatan : 2022\n'
          'Tanggal Lahir : 01 Februari 2004\n'
          'Usia : 20 Tahun\n'
          'Alamat : Tegallega, Bogor',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}