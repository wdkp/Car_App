import 'package:car_app/pages/Audi_page.dart';
import 'package:car_app/pages/BMW_page.dart';
import 'package:car_app/pages/Landrover_page.dart';
import 'package:car_app/pages/Mercedes_page.dart';
import 'package:car_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/BMWpage': (context) => BmwPage(),
        '/Audipage': (context) => AudiPage(),
        '/Mercedespage': (context) => MercedesPage(),
        '/Landroverpage': (context) => LandroverPage(),

      }
      );
  }
}