// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:car_app/square.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          MySquare(image: 'lib/images/Audi Logo.jpeg'),
          MySquare(image: 'lib/images/Aston Martin Logo.png',),
          MySquare(image: 'lib/images/BMW logo.png',),
          MySquare(image: 'lib/images/Jaguar Logo.png',),
          MySquare(image: 'lib/images/LandRover Logo.png',),
          MySquare(image: 'lib/images/Lexus Logo.png',),
          MySquare(image: 'lib/images/Mercedes Logo.jpeg',),
          MySquare(image: 'lib/images/VW Logo.png',),
          
          
        ],
      ),
      
      
      
      appBar: AppBar(title: Text("Home Page")),
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
                Navigator.pop(context);
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