// import 'package:alqr/modules/constants.dart';
// ignore_for_file: prefer_const_constructors

import 'package:alqr/components/btnav.dart';
import 'package:alqr/pages/home.dart';
import 'package:alqr/pages/len.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({super.key
      // required dynamic controller;

      });
  TextEditingController userInput = TextEditingController();

  @override
  State<HomePage> createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

int selectedIndex = 0;

void navigatePages(int index){
  setState(() {
    selectedIndex = index;
  });
}

List <Widget> _pages=[

  //home page
  HomeScreen(),

  //lenpage
  LenPage(),

];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottNav(
          onTabChange: (index) => navigatePages(index)
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: _pages[selectedIndex],
      ),
    );
  }
}
