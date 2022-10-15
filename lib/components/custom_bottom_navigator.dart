// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  final Widget child;
  final String text;

  const CustomBottomNavigator({
    Key? key,
    required this.child,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65.0,
          height: 32.19,
          decoration: const BoxDecoration(
            color: Color(0xFF172026),
            borderRadius: BorderRadius.all(Radius.circular(50.0)),
          ),
          child: child,
        ),
        const Spacer(),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFFEDF4F8),
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
