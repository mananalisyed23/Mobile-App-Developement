import 'package:flutter/material.dart';
import 'package:themes/screens/themes.dart';

void main() {
  runApp(Themesday());
}

class Themesday extends StatelessWidget {
  const Themesday({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.tealAccent,
        // for scafold-->scaffoldBackgroundColor: const Color.fromARGB(255, 165, 253, 232),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          padding: EdgeInsets.all(15),
        ),

      ),
      textTheme: TextTheme(
        displayMedium: TextStyle(
          fontSize: 56,
        )
      )
      ),
      home: ThemesScreen(),
    );
  }
}
