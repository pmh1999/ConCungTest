import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/login_status.dart';

const databaseName = "concung.db";
const table = "login";
const columnStatus = 'status';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (!(_database != null)) _database = await initDatabase();
    return _database;
  }

  Future<Database> initDatabase() async {
    print("DB Creating...");
    final databasesPath = join(await getDatabasesPath(), "concung.db");
    return await openDatabase(
      databasesPath,
      version: 1,
      onCreate: (Database db, int version) async {
        print('DB created!!');
        await db.execute('CREATE TABLE IF NOT EXISTS Login(status BOOLEAN)');
      },
    );
  }

  Future<List<LoginStatus>> getAll() async {
    print("DB Getall...");

    Database? db = await instance.database;
    var res = await db!.rawQuery('SELECT * FROM Login');
    print("!!!!!!!!!!!!!!!" + res.toString());

    return res.map((e) => LoginStatus.fromJson(e)).toList();
  }

  Future<bool> addTodo(LoginStatus status) async {
    Database? db = await instance.database;
    var res = await db!.insert(table, status.toJson());
    return true;
  }

  Future<void> clearTable() async {
    Database? db = await instance.database;
    await db!.rawQuery("DELETE FROM $table");
    return;
  }
}
