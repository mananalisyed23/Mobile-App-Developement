import 'package:flutter/material.dart';

class ThemesScreen extends StatelessWidget {
  const ThemesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: (){},
            child: Text('Themed button')),
            ElevatedButton(onPressed: (){},
            child: Text('Themed button')),
            ElevatedButton(onPressed: (){},
            child: Text('Themed button')),
            Text('Manan',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontSize: 56,
            ),
            )
          ],
        ),
      ),
    );
  }
}