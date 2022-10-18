import 'package:flutter/material.dart';
import 'package:flutterando_app/pages/info_page.dart';
import 'package:flutterando_app/pages/splash.dart';
import 'package:provider/provider.dart';

import 'controller/theme_controller.dart';

void main() {
  runApp(
    MultiProvider( // create the provider
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeController(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //final themeController = ThemeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //themeController.addListener(() {
      //setState(() {});
    //});
  }

  @override
  void dispose() {
     //themeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutterando APP',
      themeMode: Provider.of<ThemeController>(context).themeMode, //themeController.themeMode,
      theme: ThemeData(
        backgroundColor: const Color(0xffd6dfe4),
      ),
      darkTheme: ThemeData(
        backgroundColor: const Color(0xFF121517),
      ),
      routes: <String, WidgetBuilder>{
        '/info_pages': (BuildContext context) {return const InfoPage();}
      },
      home: const Splash(),
    );
  }
}
