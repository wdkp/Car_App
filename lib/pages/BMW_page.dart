import 'package:flutter/material.dart';

class BmwPage extends StatelessWidget {
  const BmwPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMW")),
      drawer: Drawer(
        backgroundColor: Colors.grey[100],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
              Icons.favorite,
              size: 48,
              )
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("S E T T I N G S"),
              onTap: () {
                Navigator.pushNamed(context, '/settingspage');
              },
            ),

          ],
        ),
      ),
    );
  }
}