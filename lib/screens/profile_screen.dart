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
<<<<<<< HEAD
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
=======
      body: Column(
        children: [
          const ProfileImage(),
          const SizedBox(
            height: 20,
          ),
          Text('Kumthon Jiamsakuntip', style: textTitle),
          const SizedBox(
            height: 1,
          ),
          Text(
            'itznongdong@gmail.com',
            style: textSubTitle,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 150,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: Center(
              child: Text(
                'Edit Profile',
                style: textBtn,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileMenu(title: 'Setting',icon: Icons.settings,),
          const SizedBox(height: 15,),
          const ProfileMenu(title: 'Billing Detail',icon: Icons.wallet,),
          const SizedBox(height: 15,),
          const ProfileMenu(title: 'Accessibility',icon: Icons.accessibility,),
          const SizedBox(height: 15,),
          const ProfileMenu(title: 'License',icon: Icons.book,),
          const SizedBox(height: 30,),
          const ProfileMenu(title: 'Logout',icon: Icons.exit_to_app,),
>>>>>>> 52e69706c5d11873a3617fa89ab9dedea419eab9
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
