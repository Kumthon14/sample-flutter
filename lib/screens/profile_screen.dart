import 'package:flutter/material.dart';
import 'package:myapp2/constant/constant.dart';
import 'package:myapp2/screens/EditProfileScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedItem = 0;

  void _navigationBottomNavBar(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  final List<Widget> _pages = [
    const Text('Home'),
    const Text('Setting'),
    const Text('Favorite'),
    const EditProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            const Icon(Icons.arrow_back_ios, size: 20, color: iconPrimaryColor),
        title: Center(
            child: Text(
          'Edit Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(Icons.exit_to_app, size: 20, color: iconPrimaryColor),
          SizedBox(width: 20),
        ],
      ),
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.orange,
          currentIndex: _selectedItem,
          onTap: _navigationBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Edit Profile',
            ),
          ]),
    );
  }
}
