import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  static Database? _database;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'booking.db');
      print('Database path: $path');  // Add this line to check the path
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, phone TEXT, password TEXT, created_at TEXT, updated_at TEXT)',
        );
        await db.execute(
          'CREATE TABLE doctors(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, specialty TEXT, bio TEXT, availability TEXT, contact_info TEXT)',
        );
        await db.execute(
          'CREATE TABLE appointments(id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER, doctor_id INTEGER, date TEXT, time TEXT, status TEXT)',
        );
        await db.execute(
          'CREATE TABLE reviews(id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER, doctor_id INTEGER, rating INTEGER, comment TEXT, created_at TEXT)',
        );
        await db.execute(
          'CREATE TABLE notifications(id INTEGER PRIMARY KEY AUTOINCREMENT, user_id INTEGER, message TEXT, is_read INTEGER, created_at TEXT)',
        );
      },
    );
  }

  Future<void> insertUser(Map<String, dynamic> user) async {
    final db = await database;
    await db.insert(
      'users',
      user,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertDoctor(Map<String, dynamic> doctor) async {
    final db = await database;
    await db.insert(
      'doctors',
      doctor,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertAppointment(Map<String, dynamic> appointment) async {
    final db = await database;
    await db.insert(
      'appointments',
      appointment,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertReview(Map<String, dynamic> review) async {
    final db = await database;
    await db.insert(
      'reviews',
      review,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertNotification(Map<String, dynamic> notification) async {
    final db = await database;
    await db.insert(
      'notifications',
      notification,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await database;
    return await db.query('users');
  }

  Future<List<Map<String, dynamic>>> getDoctors() async {
    final db = await database;
    return await db.query('doctors');
  }

  Future<List<Map<String, dynamic>>> getAppointments() async {
    final db = await database;
    return await db.query('appointments');
  }

  Future<List<Map<String, dynamic>>> getReviews() async {
    final db = await database;
    return await db.query('reviews');
  }

  Future<List<Map<String, dynamic>>> getNotifications() async {
    final db = await database;
    return await db.query('notifications');
  }

  Future<void> updateUser(Map<String, dynamic> user) async {
    final db = await database;
    await db.update(
      'users',
      user,
      where: 'id = ?',
      whereArgs: [user['id']],
    );
  }

  Future<void> updateDoctor(Map<String, dynamic> doctor) async {
    final db = await database;
    await db.update(
      'doctors',
      doctor,
      where: 'id = ?',
      whereArgs: [doctor['id']],
    );
  }

  Future<void> updateAppointment(Map<String, dynamic> appointment) async {
    final db = await database;
    await db.update(
      'appointments',
      appointment,
      where: 'id = ?',
      whereArgs: [appointment['id']],
    );
  }

  Future<void> updateReview(Map<String, dynamic> review) async {
    final db = await database;
    await db.update(
      'reviews',
      review,
      where: 'id = ?',
      whereArgs: [review['id']],
    );
  }

  Future<void> updateNotification(Map<String, dynamic> notification) async {
    final db = await database;
    await db.update(
      'notifications',
      notification,
      where: 'id = ?',
      whereArgs: [notification['id']],
    );
  }

  Future<void> deleteUser(int id) async {
    final db = await database;
    await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteDoctor(int id) async {
    final db = await database;
    await db.delete(
      'doctors',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteAppointment(int id) async {
    final db = await database;
    await db.delete(
      'appointments',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteReview(int id) async {
    final db = await database;
    await db.delete(
      'reviews',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteNotification(int id) async {
    final db = await database;
    await db.delete(
      'notifications',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
} 