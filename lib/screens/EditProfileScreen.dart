import 'package:flutter/material.dart';
import 'package:myapp2/components/profile_img.dart';
import 'package:myapp2/constant/constant.dart';
import '../components/profile_menu.dart';


class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
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
          const ProfileMenu(
            title: 'Setting',
            icon: Icons.settings,
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileMenu(
            title: 'Billing Detail',
            icon: Icons.wallet,
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileMenu(
            title: 'Accessibility',
            icon: Icons.accessibility,
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileMenu(
            title: 'License',
            icon: Icons.book,
          ),
          const SizedBox(
            height: 15,
          ),
          const ProfileMenu(
            title: 'Logout',
            icon: Icons.exit_to_app,
          ),
        ],
      ),
    );
  }
}
