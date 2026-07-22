
import 'package:flutter/material.dart';

class PopdropScreen extends StatefulWidget {
  const PopdropScreen({super.key});

  @override
  State<PopdropScreen> createState() => _PopdropScreenState();
}

class _PopdropScreenState extends State<PopdropScreen> {
  String selected='';

  int selectedTwo= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              print('Value is $value');
            },
            itemBuilder: (context){
            return [
              PopupMenuItem(
                value: 'item 1',
                child: Text('item 1')),
                PopupMenuItem(
                value: 'item 2',
                child: Text('item 2')),
                PopupMenuItem(
                value: 'item 3',
                child: Text('item 3')),
            ];
          })
        ],
        ),
      body: Center(
        child: DropdownButton(
          value: selectedTwo,
          onChanged: (value) {
            setState(() {
              selectedTwo=value!;
            });
          },
          items: [
            for(int i=0; i<=4;i++)
              DropdownMenuItem(
              value: i,
              child: Text('Item $i')
              )
          ], 
          
        ),
      ),
      );
  }
}