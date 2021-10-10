import 'package:sembast/sembast.dart';
import 'package:simple_todo_app/core/infrastructure/sembast_database.dart';
import 'package:simple_todo_app/core/shared/constants.dart';

class TaskLocalDatasource {
  TaskLocalDatasource(this._sembastDatabase);

  final SembastDatabase _sembastDatabase;
  final _store = stringMapStoreFactory.store(tasksStore);

  // void a() {
  //   _store.record(key).onSnapshot(database).
  // }
}
