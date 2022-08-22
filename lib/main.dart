import 'package:flutter/material.dart';
import 'package:navigate_routes_exe/first_screen.dart';
import 'package:navigate_routes_exe/second_screen.dart';
import 'package:navigate_routes_exe/third_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const ThirdScreen(),
        '/first':(context) => const FirstScreen(),
        '/second':(context) => const MusicApp(),
      },
    );
  }
}



