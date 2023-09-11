import 'package:flutter/material.dart';
import 'app_home.dart';

void main() {
  runApp(const HngxSlackid());
}

class HngxSlackid extends StatelessWidget {
  const HngxSlackid({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: const Color(0xFF090C20),
      ),
      debugShowCheckedModeBanner: false,
      home: const AppHome(),
    );
  }
}


