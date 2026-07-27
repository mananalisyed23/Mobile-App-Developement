import 'package:flutter/material.dart';
import 'package:multiprovider_app/providers/counter1_provider.dart';
import 'package:multiprovider_app/providers/counter2_provider.dart';
import 'package:multiprovider_app/providers/counter3_provider.dart';
import 'package:multiprovider_app/second_screen.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen'), backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            Consumer<Counter1Provider>(
              builder: (context, provider, child) {
                return Text(
                  provider.count.toString(),
                  style: Theme.of(context).textTheme.displayMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Counter1Provider>(
                  context,
                  listen: false,
                ).increment();
              },
              child: Text('Counter 1 Increment'),
            ),
            Consumer<Counter2Provider>(
              builder: (context, provider, child) {
                return Text(
                  provider.count.toString(),
                  style: Theme.of(context).textTheme.displayMedium,
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<Counter2Provider>(
                  context,
                  listen: false,
                ).increment();
              },
              child: Text('Counter 2 Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeNotifierProvider(
                      create: (context) => Counter3Provider(),
                      child: SecondScreen(),
                    ),
                  ),
                );
              },
              child: Text('Next screen'),
            ),
          ],
        ),
      ),
    );
  }
}
