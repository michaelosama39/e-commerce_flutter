import 'package:e_commerce_flutter/profile/widget/profile_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          ProfileMenu(
            text: 'My Account',
            icon: 'assets/icons/User Icon.svg',
            press: () {

            },
          ),
          ProfileMenu(
            text: 'Notification',
            icon: 'assets/icons/Bell.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Settings',
            icon: 'assets/icons/Settings.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Help Center',
            icon: 'assets/icons/Question mark.svg',
            press: () {},
          ),
          ProfileMenu(
            text: 'Log Out',
            icon: 'assets/icons/Log out.svg',
            press: () {

            },
          ),
        ],
      ),
    );
  }
}
