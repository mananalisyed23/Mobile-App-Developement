import 'package:flutter/material.dart';

class WidgetsScreen extends StatefulWidget {
  const WidgetsScreen({super.key});

  @override
  State<WidgetsScreen> createState() => _WidgetsScreenState();
}

class _WidgetsScreenState extends State<WidgetsScreen> {
  bool isConnected = false;
  String groupvalue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text('Widgets')),
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
              onChanged: (value) {
                setState(() {
                  isConnected = value;
                });
              },
            ),
            Checkbox(
              value: isConnected,
              onChanged: (value) {
                setState(() {
                  isConnected = value!;
                });
              },
            ),
            SwitchListTile(
              value: isConnected,
              onChanged: (value) {
                setState(() {
                  isConnected = value;
                });
              },
              title: Text('Dak Mode'),
              subtitle: Text('This is subtitle of switchlist tile'),
            ),
            CheckboxListTile(
              value: isConnected,
              onChanged: (value) {
                setState(() {
                  isConnected = value!;
                });
              },
              title: Text('Checked button'),
              subtitle: Text("This is subtitle of checkbox list tile"),
            ),
            RadioMenuButton(
              value: 'One',
              groupValue: groupvalue,
              onChanged: (value) {
                setState(() {
                  groupvalue = value!;
                });
              },
              child: Text('Option one'),
            ),
            RadioMenuButton(
              value: 'Two',
              groupValue: groupvalue,
              onChanged: (value) {
                setState(() {
                  groupvalue = value!;
                });
              },
              child: Text('Option two'),
            ),
            RadioMenuButton(
              value: 'Three',
              groupValue: groupvalue,
              onChanged: (value) {
                setState(() {
                  groupvalue = value!;
                });
              },
              child: Text('Option three'),
            ),
            RadioListTile(
              value: "four",
              groupValue: groupvalue,
              onChanged: (value) {
                setState(() {
                  groupvalue = value!;
                });
              },
              title: Text('Option four'),
              subtitle: Text('This is fourth option'),
            ),
            Wrap(
              spacing: 5,
              runSpacing: 10,
              children: [
                for (int i = 0; i <= 10; i++)
                  Container(color: Colors.amber, height: 50, width: 50),
              ],
            ),
            SizedBox(height: 10),
            CircularProgressIndicator(
              value: 0.8,
              backgroundColor: Colors.amber,
              color: Colors.black,
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(
              value: 0.6,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
