import 'package:hive/hive.dart';

class HiveService {
  Future<Box<T>> connectDb<T>(String boxName) async {
    return await Hive.openBox<T>(boxName); // Membuka kotak dengan tipe T
  }
}
