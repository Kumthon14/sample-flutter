import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('หน้าหลัก'),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(235, 92, 92, 92),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.search_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.person),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 185, 185, 185),
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'บ้าน'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'ธุรกิจ'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'โรงเรียน'),
      ]),
    );
  }
}
