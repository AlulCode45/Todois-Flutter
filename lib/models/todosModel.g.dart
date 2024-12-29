// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todosModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodosAdapter extends TypeAdapter<Todos> {
  @override
  final int typeId = 1;

  @override
  Todos read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Todos(
      title: fields[1] as String,
      userId: fields[0] as String,
      description: fields[4] as String?,
      dueDate: fields[3] as DateTime?,
      priority: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Todos obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.priority)
      ..writeByte(3)
      ..write(obj.dueDate)
      ..writeByte(4)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodosAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
