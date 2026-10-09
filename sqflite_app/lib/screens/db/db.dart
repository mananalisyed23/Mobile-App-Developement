import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_app/screens/models/model.dart';

class MyDb {
  Future<Database> database() async {
    final db = openDatabase(
      join(await getDatabasesPath(), 'my_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE notes(id INTEGER PRIMARY KEY, title TEXT, body INTEGER)',
        );
      },
      version: 1,
    );
    return db;
  }

  getNotes()async {
    List<NoteModel> notes = [];
    final db = await database();
    final data =db.query('notes');
      for (var note in await data) {
        NoteModel mynote= NoteModel.fromMap(note);
        notes.add(mynote);
    }
  }

  void insertNote(NoteModel note) async {
    final db = await database();
    await db.insert(
      'notes',
      note.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  void updateNote(NoteModel note) async {
    final db = await database();
    await db.update(
      'notes',
      note.toMap(),
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }
  void deleteNote(int id) async {
    final db = await database();
    await db.delete(
      'notes',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
