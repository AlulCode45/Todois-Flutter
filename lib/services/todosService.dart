import 'package:first/models/todosModel.dart';
import 'package:first/services/hiveService.dart';
import 'package:hive/hive.dart';

class TodoServices {
  final HiveService _hiveService = HiveService();
  late Future<Box<Todos>> db; // Tipe Future untuk kotak Todos

  TodoServices() {
    db = _hiveService.connectDb<Todos>('todos');
  }

  Future<List<Todos>> getTodos() async {
    final box = await db; // Buka database
    return box.values.toList(); // Ambil semua item dari kotak
  }

  Future<void> addTodo(Todos todo) async {
    final box = await db;
    await box.add(todo); // Menambahkan item ke kotak
  }

  Future<void> deleteTodo(int index) async {
    final box = await db;
    await box.deleteAt(index); // Menghapus item berdasarkan index
  }

  Future<void> updateTodo(int index, Todos updatedTodo) async {
    final box = await db;
    await box.putAt(index, updatedTodo); // Memperbarui item berdasarkan index
  }

  Future<Todos?> getTodoByIndex(int index) async {
    final box = await db;
    if (index < box.length) {
      return box.getAt(index);
    }
    return null;
  }
}
