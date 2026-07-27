import 'package:flutter/material.dart';
import 'package:multiprovider_app/Homescreen.dart';
import 'package:multiprovider_app/providers/counter1_provider.dart';
import 'package:multiprovider_app/providers/counter2_provider.dart';
import 'package:multiprovider_app/providers/counter3_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProviderApp());
}

class MultiProviderApp extends StatelessWidget {
  const MultiProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Counter1Provider()),
          ChangeNotifierProvider(create: (context) => Counter2Provider()),
        ],
        child: Homescreen(),
      ),
    );
  }
}
