import 'dart:developer';

import 'package:aman_store2/core/helper/sqflite_helper/sql_querys.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlHelper {
  static Database? _db;
  static int version = 10;

  Future<Database?> get db async {
    _db ??= await inizalizeDb();
    return _db;
  }

  static inizalizeDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'AmanStore.db');
    Database mydb =
        await openDatabase(path, onCreate: _onCreate, version: version);
    return mydb;
  }

  static _onCreate(Database db, int verson) async {
    await db.execute(SqlQuerys.searchTable);

    log('crated');
  }

  static addData({String? table, required dynamic data}) async {
    final db = await SqlHelper().db;
    final res = await db?.insert(table ?? 'search', data);
    return res;
  }

  static readData(String sql) async {
    Database? mydb = await SqlHelper().db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

  static deletdata(String sql) async {
    Database? mydb = await SqlHelper().db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }

  static Future<void> closeDatabase() async {
    if (_db != null) {
      await _db!.close();

      _db = null;
    }
  }
}
