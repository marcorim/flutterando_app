import 'dart:async';

import 'package:flutter/material.dart';

import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 4000),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: const Center(
        child: Image(
          image: AssetImage('assets/images/masterclass_logo.png'),
        ),
      ),
    );
  }
}
