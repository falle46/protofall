import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Info Aplikasi',
          style: TextStyle(
            color: Colors.blue, // Warna teks ProtoFall
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        color: Colors.grey[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ProtoFall',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '‘Proto’ diambil dari kata Protofolio dan ‘Fall’ dari nama pembuat aplikasi ini dengan makna aplikasi ini dibuat untuk memberikan Protofolio singkat mengenai pembuat aplikasi.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Author:',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Muhammad Falleryan',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 18,
                ),
              ),
              Text(
                '065122185',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 18,
                ),
              ),
              Text(
                'falleryan46@gmail.com',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 18,
                ),
              ),
              Text(
                '081271388599',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
