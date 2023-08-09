import 'package:budget_tracker_app_af_6/Model/category_data_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Category_Helper {
  //create private constructor
  Category_Helper._();
  static Database? db;

  static final Category_Helper category_helper = Category_Helper._();
  Future initDb() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, 'mybudget.db');

    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, _) async {
        await db.execute(
            "CREATE TABLE IF NOT EXIST budget(id INTEGER PRIMARY KEY AUTOINCREMENT,category_name TEXT not null,category_image BLOB);");
      },
    );
  }

  Future<int> insertData({required CategoryModel data}) async {
    await initDb();
    String query =
        "INSERT INTO budget(category_name,category_image) VALUES(?,?);";
    List args = [data.category_name, data.category_image];
    return db!.rawInsert(query, args);
  }

  fetchAllData() async {
    await initDb();
  }

  UpdateAllData() async {
    await initDb();
  }

  DeleteAllData() async {
    await initDb();
  }
}
