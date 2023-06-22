import 'package:path/path.dart';
import 'package:sociops/screen/fitur_profile/model/profile_model.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;
  static late Database _database;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  Future<Database> get database async {
    _database = await _initializeDB();
    return _database;
  }

  final String _profileData = 'profile';

  Future<Database> _initializeDB() async {
    var db = openDatabase(
      join(
        await getDatabasesPath(),
        'profile.db',
      ),
      onCreate: _onCreate,
      version: 1,
    );
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE  $_profileData (
        id INTEGER PRIMARY KEY,
        image TEXT,
        nama TEXT,
        email TEXT,
      );
    ''');
  }

  Future<int> insertProfileData(ProfileModel profile) async {
    final db = await database;

    print("sukses insert ${db.database}");
    print(profile.toMap());
    return await db.insert(_profileData, profile.toMap());
  }

  Future<int> removeProfileData(ProfileModel profile) async {
    final db = await database;
    return await db.delete(
      _profileData,
      where: 'id = ?',
      whereArgs: [profile.id],
    );
  }

  Future<ProfileModel> getProfileDataById(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db.query(
      _profileData,
      where: 'id = ?',
      whereArgs: [id],
    );

    return results.map((e) => ProfileModel.fromMap(e)).first;
  }

  Future<List<ProfileModel>> getProfileData() async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db.query(_profileData);

    return results.map((e) => ProfileModel.fromMap(e)).toList();
  }
}
