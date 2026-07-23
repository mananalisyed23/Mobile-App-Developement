import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/screens/home_provider.dart';
import 'package:provider_app/screens/home_screen.dart';
import 'package:provider_app/screens/theme_provider.dart';

void main() {
  runApp(ProviderApp());
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeScreen(),
      child: Consumer<ThemeScreen>(
        builder: (context, provider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: provider.mode,
            home: ChangeNotifierProvider(
              create: (context) => HomeProvider(),
              child: HomeScreen(),
            ),
          );
        },
      ),
    );
  }
}
