import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '404',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 72,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Page Not Found',
                style: TextStyle(
                  color: Colors.blue[400],
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
