import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String image;

  const MySquare({super.key, required this.image});

   @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(45.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image), // Or NetworkImage if you're using URLs
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}