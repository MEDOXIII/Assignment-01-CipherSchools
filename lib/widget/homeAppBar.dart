import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        Image(
          image: AssetImage('assets/images/menu.jpeg'),
          fit: BoxFit.scaleDown,
        ),
      ],
      title: const Text(
        'CipherSchools',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      leading: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Image(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
