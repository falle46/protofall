import 'package:bioapp/screens/enproto.dart';
import 'package:flutter/material.dart';
import 'package:bioapp/widgets/encustom_sidebar.dart';

class enDashboard extends StatelessWidget {
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
      drawer: enCustomSidebar(),
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
                          'Year 3, Computers Science Student',
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
                          MaterialPageRoute(builder: (context) => enProtoPage()),
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
          'About Me',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'I am a Computer Science student at Pakuan University who has a great interest in technology, '
          'mathematics, and science. In addition to focusing on academics, I am also active in student organizations, '
          'and has experience in graphic design, website development, and application development.',
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
          'Personal Data',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Name : Muhammad Falleryan\n'
          'NPM : 065122185\n'
          'Major : Ilmu Komputer\n'
          'University : Universitas Pakuan\n'
          'Class of : 2022\n'
          'Birth Date : 01 Februari 2004\n'
          'Age : 20 Tahun\n'
          'Address : Tegallega, Bogor',
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