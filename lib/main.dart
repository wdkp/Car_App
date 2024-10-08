
// ignore_for_file: prefer_const_constructors

import 'package:car_app/pages/first_page.dart';
import 'package:car_app/pages/home_page.dart';
import 'package:car_app/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/settingspage': (context) => SettingsPage(),
        '/homepage': (context) => HomePage(),
        '/firstpage': (context) => FirstPage(),

      }
      );
  }
}