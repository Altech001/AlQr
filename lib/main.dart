import 'package:alqr/modules/constants.dart';
import 'package:alqr/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AlQr',
      theme: lightMode,
      darkTheme: darkMode,
      home:HomePage() ,
    );
  }
}