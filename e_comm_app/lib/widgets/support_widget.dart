import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle headlineTextStyle(double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: const Color.fromARGB(255, 128, 178, 117),
    );
  }

  static TextStyle blackTextStyle(double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static TextStyle whiteTextStyle(double size) {
    return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
