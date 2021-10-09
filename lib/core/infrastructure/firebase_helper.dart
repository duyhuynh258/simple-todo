import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:simple_todo_app/auth/domain/user.dart';

export 'package:cloud_firestore/cloud_firestore.dart';

extension FirebaseFirestoreUserDocument on FirebaseFirestore {
  Future<DocumentReference> userDocument(User user) async {
    return FirebaseFirestore.instance.collection('users').doc(user.id);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get taskCollection => collection('tasks');

  /// Nested sub collection under a [taskCollection]'s document.
  CollectionReference get checkListCollection => collection('checklist');
}
