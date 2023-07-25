import 'package:isar/isar.dart';

part 'todo_collection.g.dart';

@Collection()
class Todo {
  Id id = Isar.autoIncrement;

  late String title;

  late String description;

  late bool isCompleted;

  late DateTime createdAt;

  @Index()
  late DateTime updatedAt;

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, description: $description, '
        'isCompleted: $isCompleted, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
