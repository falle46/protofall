import 'package:bioapp/screens/dashboard.dart';
import 'package:bioapp/screens/endashboard.dart';
import 'package:bioapp/screens/eninfo.dart';
import 'package:flutter/material.dart';
import 'package:bioapp/screens/error.dart';
import 'package:bioapp/screens/info.dart';

class enCustomSidebar extends StatelessWidget {
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
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home Page',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => enDashboard()),
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
                'Bahasa Indonesia',
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
            // Menu Item: Info Aplikasi
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              title: Text(
                'App Info',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context); // Menutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => enInfoPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
