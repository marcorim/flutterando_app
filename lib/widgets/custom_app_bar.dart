import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/theme_controller.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    //final themeController = ThemeController();

    return Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 48,
            height: 48,
          ),
          const SizedBox(width: 3.0),
          const Text(
            'Atividades\nFlutterando masterclass',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              //themeController.changeThemeMode();
              Provider.of<ThemeController>(context, listen: false).changeThemeMode();
            },
            icon: const Image(
              width: 21.45,
              height: 24,
              image: AssetImage(
                'assets/images/Icon awesome-moon.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
