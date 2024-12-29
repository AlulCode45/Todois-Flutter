import 'package:hive/hive.dart';

part 'usersModel.g.dart'; // Diperlukan untuk Hive (dihasilkan oleh build_runner)

@HiveType(typeId: 2) // Pastikan typeId unik
class Users {
  @HiveField(0)
  String email;

  @HiveField(1)
  String name;

  @HiveField(2)
  String? photoProfile; // Mengganti nama untuk konsistensi camelCase

  @HiveField(3)
  String username;

  Users({
    required this.email,
    required this.name,
    required this.username,
    this.photoProfile,
  });
}
