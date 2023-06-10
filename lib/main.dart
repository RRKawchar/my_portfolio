import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/home_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: kDefaultInputDecorationTheme
      ),
      home:const HomeScreen(),
    );
  }
}


