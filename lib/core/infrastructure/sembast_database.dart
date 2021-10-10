import 'dart:developer';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class SembastDatabase {
  SembastDatabase() {
    log('Initialized SembastDatabase');
  }
  late Database _instance;
  Database get instance => _instance;

  bool _hasBeenInitialized = false;

  Future<void> init() async {
    if (_hasBeenInitialized) return;
    try {
      final dbDirectory = await getApplicationDocumentsDirectory();
      await dbDirectory.create(recursive: true);
      final dbPath = join(dbDirectory.path, 'db.sembast');
      _instance = await databaseFactoryIo.openDatabase(dbPath);
      _hasBeenInitialized = true;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
