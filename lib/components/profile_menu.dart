import 'package:flutter/material.dart';
import 'package:myapp2/constant/constant.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfileMenu({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 40,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            child: Icon(
              icon,
              size: 24,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Text(
            title,
            style: textSubTitle,
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Color.fromARGB(255, 78, 78, 78),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: iconSecondaryColor,
            ),
          )
        ],
      ),
    );
  }
}
