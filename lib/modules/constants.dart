//themes
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade100,
    brightness: Brightness.light,
    primary: Colors.grey.shade300,
    secondary: Colors.grey.shade200,
  ),
);


ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    brightness: Brightness.dark,
    primary: Colors.grey.shade700,
    secondary: Colors.grey.shade800,
  ),
);

// key words

const String gtitle = "Easy Generate";
String gcontent = "Simple generation of the QrCode,\n the ability to change its appearance.";

//others
