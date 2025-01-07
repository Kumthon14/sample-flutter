import 'package:flutter/material.dart';
import 'package:myapp2/constant/constant.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange,
            radius: 100,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white70,
            radius: 22,
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.edit,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
