import 'package:flutter/material.dart';
import 'package:value_vertex/Screens/on_boarding_screen.dart';
import 'package:value_vertex/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home App',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: secondaryColor,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
