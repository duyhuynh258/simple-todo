import 'package:uuid/uuid.dart';

class UniqueId {
  UniqueId()
      : value = const Uuid().v1(),
        isNewlyCreated = true;

  const UniqueId.fromUUID(String uuid)
      : value = uuid,
        isNewlyCreated = false;
  final String value;
  final bool isNewlyCreated;
}
