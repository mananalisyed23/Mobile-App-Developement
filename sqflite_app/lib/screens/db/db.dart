import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyDb {
  Future<Database> database() async {
    final db = openDatabase(
      join(await getDatabasesPath(), 'my_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE my_table(id INTEGER PRIMARY KEY, title TEXT, body INTEGER)',
        );
      },
      version: 1,
    );
    return db;
  }
}
