import 'package:flutter/material.dart';

class enInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Info',
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
                  '‘Proto’ is taken from the word Protfolio and ‘Fall’ from the name of the creator of this application, meaning that this application was created to provide a short portfolio about the creator of the application.',
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
                'NPM 065122185',
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
