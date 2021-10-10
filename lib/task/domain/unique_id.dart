import 'package:uuid/uuid.dart';

class UniqueId {
  UniqueId() : value = const Uuid().v1();
  final String value;
}
