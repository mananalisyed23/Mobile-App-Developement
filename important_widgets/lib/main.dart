import 'package:flutter/material.dart';
import 'package:important_widgets/important_widgets.dart';

void main(){
  runApp(ImportantWidgets());
}
class ImportantWidgets extends StatelessWidget {
  const ImportantWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //themeMode: ThemeMode.dark, // for setting dark mode
     // darkTheme:  ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: WidgetsScreen(),
    );
  }
}