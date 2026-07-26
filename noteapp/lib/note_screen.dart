import 'package:flutter/material.dart';
import 'package:noteapp/note_model.dart';
import 'package:noteapp/noteprovider.dart';
import 'package:provider/provider.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Note Screen')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            spacing: 20,
            children: [
              TextFormField(
                controller: title,
                decoration: InputDecoration(hintText: 'Enter Title'),
              ),
              TextFormField(
                controller: description,
                decoration: InputDecoration(hintText: 'Enter Description'),
              ),
              ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    NoteModel note = NoteModel(
                      title.text,
                      description.text,
                    );
                    Provider.of<Noteprovider>(
                      context,
                      listen: false,
                    ).addNote(note);
                    Navigator.pop(context);
                  }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
