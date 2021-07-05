import 'package:flutter/material.dart';
import 'package:login/Screens/profile/components/ProfileMenu.dart';
import 'package:login/Screens/profile/components/profilePic.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      color: Colors.grey[50],
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          // profile clicks
          ProfileMenu(icon: Icons.person_outline, text: 'My Account', press: () { }),
          ProfileMenu(icon: Icons.notifications_outlined, text: 'Notifications', press: () { }),
          ProfileMenu(icon: Icons.settings_outlined, text: 'Settings', press: () { }),
          ProfileMenu(icon: Icons.help_outline, text: 'Help Center', press: () { }),
          ProfileMenu(icon: Icons.logout, text: 'Log Out', press: () { }),
        ],
      
      ),
    );
  }
}
