import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const Text('Atividades\nFlutterando masterclass',
            style: TextStyle(color: Colors.white,),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
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
