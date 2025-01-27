import 'package:flutter/material.dart';
import 'package:myapp2/constant/constant.dart';
import 'package:myapp2/screens/EditProfileScreen.dart';
import 'package:myapp2/screens/EditHomeScreen.dart';
import 'package:iconly/iconly.dart';

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

  /*String _getAppBarTitle() {
    switch (_selectedItem) {
      case 0:
        return 'Home'; // เปลี่ยนเป็นชื่อที่ต้องการสำหรับหน้าแรก
      case 1:
        return 'Setting';
      case 2:
        return 'Favorite';
      case 3:
        return 'Edit Profile'; // สำหรับหน้าต่าง Edit Profile
      default:
        return '';
    }
  }*/
  final List<String> _page_text = [
    "Home",
    "Setting",
    "Favorite",
    "Edit Profile",
  ];

  final List<Widget> _pages = [
    const EditHomeScreen(),
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
          //_getAppBarTitle(),
          _page_text[_selectedItem],
          style: textTitle,
        )),
        actions: const [
          Icon(Icons.exit_to_app, size: 20, color: iconPrimaryColor),
          SizedBox(width: 25),
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
                IconlyBroken.home,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconlyBroken.heart,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconlyBroken.setting,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Setting',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconlyBroken.profile,
                size: 30,
                color: iconPrimaryColor,
              ),
              label: 'Edit Profile',
            ),
          ]),
    );
  }
}
