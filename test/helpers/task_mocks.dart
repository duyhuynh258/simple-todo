import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple_todo_app/task/domain/task.dart';
import 'package:simple_todo_app/task/infrastructure/task_repository.dart';

class TaskRepositoryMock extends Mock implements TaskRepository {}

class MockOnTaskItemActionCallback extends Mock {
  void call(Task? resultTask);
}

class FirebaseFirestoreMock extends Mock implements FirebaseFirestore {}
