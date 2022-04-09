import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 155,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/Profile Image.png'),
      ),
    );
  }
}
