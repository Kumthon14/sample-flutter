import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.blue[400],
            child: const Center(
              child: Text('Test My App'),
            ),
          ),
          Container(
            height: 100,
            color: Colors.blue[200],
            child: const Center(
              child: Text('Test My App'),
            ),
          ),
          Container(
            height: 100,
            color: Colors.blue,
            child: const Center(
              child: Text('Test My App'),
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: const Text('Edit Profile'),
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
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'บ้าน'),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: 'ธุรกิจ'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'โรงเรียน'),
      ]),
    );
  }
}
