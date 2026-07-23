import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/screens/home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider Screen')),
      body: Center(
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) {
            return Text(
              provider.count.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            );
          },
        ),
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
