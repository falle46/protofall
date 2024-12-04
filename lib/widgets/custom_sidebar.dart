import 'package:bioapp/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:bioapp/screens/error.dart';
import 'package:bioapp/screens/info.dart';

class CustomSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black.withOpacity(0.75), // Transparansi sidebar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Sidebar
            Container(
              height: 80,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Colors.black.withOpacity(0.85),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(color: Colors.white.withOpacity(0.6), height: 1),
            // Menu Item: English
            ListTile(
              leading: Icon(
                Icons.language,
                color: Colors.white,
              ),
              title: Text(
                'Halaman Utama',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
            Divider(color: Colors.white.withOpacity(0.6), height: 1),

            // Menu Item: English
            ListTile(
              leading: Icon(
                Icons.language,
                color: Colors.white,
              ),
              title: Text(
                'English',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ErrorPage()),
                );
              },
            ),
            Divider(color: Colors.white.withOpacity(0.6), height: 1),
            // Menu Item: Info Aplikasi
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                'Info Aplikasi',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InfoPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
