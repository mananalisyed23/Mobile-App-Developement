import 'package:flutter/material.dart';
import 'package:noteapp/home_screen.dart';
import 'package:noteapp/note_screen.dart';
import 'package:noteapp/noteprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Noteprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          '/notescreen': (context) => NoteScreen(),
        },
      ),
    );
  }
}
