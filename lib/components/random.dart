// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenertWeb extends StatelessWidget {
  final controller;
  final hintText;
  final labelText;
  GenertWeb({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              // fillColor: Colors.grey.shade200,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400),
              ),
              hintText: hintText,
              labelText: labelText,
            ),
          ),
        ),
      ],
    );
  }
}
