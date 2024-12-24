import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  int d = 0;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Demo my git",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
