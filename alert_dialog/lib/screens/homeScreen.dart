// ignore: file_names
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Logout'),
                      icon: Icon(Icons.logout),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Are you sure you want to logout?'),
                          Text('Are you sure you want to logout?'),
                          Text('Are you sure you want to logout?'),
                          Text('Are you sure you want to logout?'),
                        ],
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('No'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Yes'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Show Dialog'),
            ),
            ElevatedButton(onPressed: () {
              showModalBottomSheet(context: context,
              showDragHandle: true,
              builder: (context){
                return ListView(
                  children: [
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    ),
                    ListTile(
                      title: Text('This is a title'),
                    )
                  ],
                );
              });
            }, child: Text('Show Bottom sheet')),
          ],
        ),
      ),
    );
  }
}
