import 'package:flutter/material.dart';
import 'package:navigation/screens/navigation.dart';

class Homescreen extends StatelessWidget {
  
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 15,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NavigationScreen(name: 'Manan',);
                    },
                  ),
                );
              },
              child: Text('Profile Screen'),
            ),
          ),
          // Center(
          //   child: ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushReplacement(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) {
          //             return SettingsScreen();
          //           },
          //         ),
          //       );
          //     },
          //     child: Text('Settings Screen'),
          //   ),
          // ),
        ],
      ),
    );
  }
}
