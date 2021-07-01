import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Translater {
 static final Translater _instance = new Translater.internal();

 factory Translater() => _instance;
 static Database _db;

Translater.internal();

 initDb() async {
   io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
   String path = join(documentsDirectory.path, "database_Translater.db");
   _db = await openDatabase(path, version: 1, onCreate: _onCreate);
 }

 Database get db {
   return _db;
 }

 void _onCreate(Database db, int version) async {


   await db.execute(
       'CREATE TABLE vocabulario (id INTEGER PRIMARY KEY AUTOINCREMENT,'
'p_espanol TEXT,'
           'p_ingles TEXT');
 }
}

