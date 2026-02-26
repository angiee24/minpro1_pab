import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const StokUMKMApp());
}

class StokUMKMApp extends StatelessWidget {
  const StokUMKMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}