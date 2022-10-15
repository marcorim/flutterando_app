import 'package:flutter/material.dart';
import 'package:flutterando_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutterando APP',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        backgroundColor: const Color(0xFF121517),
      ),
      home: const HomePage(),
    );
  }
}



