import 'package:flutter/material.dart';
import 'screens/splashscreen.dart';
import 'screens/dashboard.dart';
import 'screens/proto.dart';
import 'screens/error.dart';
import 'screens/info.dart';

void main() {
  runApp(ProtoFallApp());
}

class ProtoFallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProtoFall',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF1E1E1E), // Warna latar belakang
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false, // Menghapus label debug
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(), // Jangan gunakan const di sini
        '/dashboard': (context) => Dashboard(),
        '/proto': (context) => ProtoPage(),
        '/error': (context) => ErrorPage(),
        '/info': (context) => InfoPage(),
      },
    );
  }
}
