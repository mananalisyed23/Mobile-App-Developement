import 'package:flutter/material.dart';
import 'package:multiprovider_app/providers/counter3_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Second Screen')),
    body: Center(
      child: Column(
        children: [
          Consumer<Counter3Provider>(
                builder: (context, provider, child) {
                  return Text(
                    provider.count.toString(),
                    style: Theme.of(context).textTheme.displayMedium,
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<Counter3Provider>(
                    context,
                    listen: false,
                  ).increment();
                },
                child: Text('Counter 2 Increment'),
              ),
        ],
      ),
    ),
    );
  }
}
