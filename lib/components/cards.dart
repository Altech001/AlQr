// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String title;
  final String content;
  final bgCol;
  final Function()? onTap;

  // callbacks
  const CardTile({
    super.key,
    required this.title,
    required this.content,
    required this.bgCol,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: bgCol),
          child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white
              ),
            ),
            subtitle: Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Icon(Icons.arrow_circle_right_outlined),
          ),
        ),
      ),
    );
  }
}
