import 'package:flutter/material.dart';
import 'package:noteapp/note_model.dart';
import 'package:noteapp/noteprovider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Consumer<Noteprovider>(
        builder: (context, provider, child) {
          return ListView(
            children: [
              for (NoteModel note in provider.notes)
                ListTile(title: Text(note.title), subtitle: Text(note.desc)),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context,'/notescreen');
      },
      child: Icon(Icons.add),
      ),
    );
  }
}
