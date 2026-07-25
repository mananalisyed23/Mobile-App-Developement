import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/screens/home_provider.dart';
import 'package:provider_app/screens/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Screen')),
      body: Consumer<ThemeScreen>(
        builder: (context, provider, child) {
          return DropdownButton<ThemeMode>(
            value: provider.mode,
            onChanged: (value) {
              provider.switchtheme(value!);
            },
            items: [
              DropdownMenuItem(value: ThemeMode.system, child: Text('System')),
              DropdownMenuItem(value: ThemeMode.dark, child: Text('Dark')),
              DropdownMenuItem(value: ThemeMode.light, child: Text('Light')),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<HomeProvider>(context, listen: false).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
