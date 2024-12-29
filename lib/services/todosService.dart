import 'package:hive/hive.dart';

class TodoServices {
  Future<Box> connectDb() async {
    return await Hive.openBox('todos');
  }
}
