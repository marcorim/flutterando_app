import 'package:flutter/material.dart';

import '../components/custom_bottom_navigator.dart';
import '../components/separator.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomBottomNavigator(
            text: 'Atividades',
            child: Image(
              image: AssetImage('assets/images/Icon feather-target.png'),
            ),
          ),
          Separator(),
          CustomBottomNavigator(
            text: 'Repositórios',
            child: Image(
              image: AssetImage('assets/images/Icon awesome-github.png'),
            ),
          ),
          Separator(),
          CustomBottomNavigator(
            text: 'Sobre o DEV',
            child: Icon(
              Icons.person,
              size: 35,
              color: Color(0xFFEDF4F8),
            ),
          ),
        ],
      ),
    );
  }
}
