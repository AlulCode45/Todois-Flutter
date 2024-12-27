class todosModel {
  String user_id;
  String title;
  String? priority;
  DateTime? due_date;
  String? description;

  todosModel({
    required this.title,
    required this.user_id,
    this.description,
    this.due_date,
    this.priority
  });
}
