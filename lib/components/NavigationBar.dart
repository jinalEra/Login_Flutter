import 'package:flutter/material.dart';
import 'package:login/Screens/Home/homeScreen.dart';
import 'package:login/Screens/profile/profileScreen.dart';
import 'package:login/enums.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key, this.selectedMenu}) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {

    // ignore: unused_local_variable
    final Color inActiveColor = Colors.grey[400];

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
        height: 55,
        decoration: NavigatioBar(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 25,
                    // if menustate is equals to selected state than color is orange otherwise grey | menu selcted in ProfileScreen.dart
                    color: MenuState.home == selectedMenu ? Colors.orange : inActiveColor,
                  ),
                  onPressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    size: 25,
                    color: MenuState.favourite == selectedMenu ? Colors.orange : inActiveColor,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.message_outlined,
                    size: 25,
                    color: MenuState.message == selectedMenu ? Colors.orange : inActiveColor,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outline_outlined,
                    size: 25,
                    color: MenuState.profile == selectedMenu ? Colors.orange : inActiveColor,
                  ),
                  onPressed: () => Navigator.pushNamed(context, ProfileScreen.routeName),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  BoxDecoration NavigatioBar() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15)),
      ],
    );
  }
}
