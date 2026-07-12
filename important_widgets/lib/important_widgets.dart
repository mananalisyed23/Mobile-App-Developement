import 'package:flutter/material.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  bool isConnected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text('Widgets')
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
            // ignore: deprecated_member_use
            activeColor: Colors.amber,
            activeTrackColor: Colors.brown,
            inactiveTrackColor: Colors.blueGrey,
            inactiveThumbColor: Colors.white,
            value: isConnected,
            onChanged:(value){ setState(() {
              isConnected= value;
            });
            }
            ),
            Checkbox(
            value: isConnected,
            onChanged: (value) {
              setState(() {
                isConnected = value!;
              });
          }),
          SwitchListTile(value: isConnected,
          onChanged: (value){
            setState(() {
              isConnected =value;
            });
          },
          title: Text('Dak Mode'),
          )
          ],
        ),
      ),
    );
  }
}
