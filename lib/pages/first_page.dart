// ignore_for_file: prefer_const_constructors

import 'package:car_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/Logo.png',
                height: 280,
                width: 690,
                ),
              ),
          
              const SizedBox(height: 48),
          
              Text(
                'Welcome to the Car App!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )
              ),
          
              const SizedBox(height: 48),
          
              Text(
                'All of Your Automotive Needs Simplified',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )
              ),
          
              const SizedBox(height: 48),
          
              GestureDetector(
                onTap:() => Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                    ),
                  ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Browse Here',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        ),
                      
                      ),
                  ),
                ),
              )
          
            ],
          ),
        ),
      ),

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