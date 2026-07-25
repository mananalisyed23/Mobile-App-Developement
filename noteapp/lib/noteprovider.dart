import 'package:flutter/material.dart';
import 'package:noteapp/note_model.dart';

class Noteprovider with ChangeNotifier{
List<NoteModel> notes =[];

void addNote(NoteModel note){
    notes.add(note);
    notifyListeners();  
}

}