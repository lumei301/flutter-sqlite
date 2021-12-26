import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqliteService{
  static const String databaseName = "database.db";
  static Database? db;
  static Future<Database> initizateDb() async{
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);
    return db?? await openDatabase(
      path, 
      version: 1,       
      onCreate: (Database db, int version) async {
        await createTables(db);
    });
  }

  static Future<void> createTables(Database database) async{
    await database.execute("""CREATE TABLE IF NOT EXISTS Notes (
        Id TEXT NOT NULL,
        Title TEXT NOT NULL,
        Description TEXT NOT NULL,
      )      
      """);
  }
}