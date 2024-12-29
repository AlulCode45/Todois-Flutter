import 'package:first/models/usersModel.dart'; // Model pengguna
import 'package:first/services/hiveService.dart'; // Layanan Hive
import 'package:hive/hive.dart';

class UserService {
  final HiveService _hiveService = HiveService();
  late Future<Box<Users>> db; // Kotak Hive untuk pengguna

  UserService() {
    db = _hiveService.connectDb<Users>('users'); // Inisialisasi kotak "users"
  }

  // Mendapatkan semua pengguna
  Future<List<Users>> getUsers() async {
    final box = await db;
    return box.values.toList(); // Mengambil semua pengguna
  }

  // Menambahkan pengguna baru
  Future<void> addUser(Users user) async {
    final box = await db;
    await box.add(user); // Menambahkan pengguna ke kotak
  }

  // Menghapus pengguna berdasarkan index
  Future<void> deleteUser(int index) async {
    final box = await db;
    await box.deleteAt(index); // Menghapus pengguna
  }

  // Memperbarui pengguna berdasarkan index
  Future<void> updateUser(int index, Users updatedUser) async {
    final box = await db;
    await box.putAt(index, updatedUser); // Memperbarui pengguna
  }

  // Mendapatkan pengguna berdasarkan index
  Future<Users?> getUserByIndex(int index) async {
    final box = await db;
    if (index < box.length) {
      return box.getAt(index);
    }
    return null;
  }
}
