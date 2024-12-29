import 'package:hive/hive.dart';

part 'todosModel.g.dart'; // Jangan lupa untuk menjalankan `flutter packages pub run build_runner build`

@HiveType(typeId: 1) // Pastikan typeId unik untuk setiap model
class Todos {
  @HiveField(0)
  String userId;

  @HiveField(1)
  String title;

  @HiveField(2)
  String? priority;

  @HiveField(3)
  DateTime? dueDate;

  @HiveField(4)
  String? description;

  Todos({
    required this.title,
    required this.userId,
    this.description,
    this.dueDate,
    this.priority,
  });
}
