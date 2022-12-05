import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pda/model/student.dart';
import 'package:pda/util/const.dart';

class FirestoreController {
  static Future fetchStudent(String collection) async {
    try {
      CollectionReference keys =
          FirebaseFirestore.instance.collection(collection);
      //não dado sensível
      final snapshot = await keys.doc('profile').get();
      final data = Student.fromJson(snapshot.data() as Map<String, dynamic>);
      print("ClientId: ${StudentAccess.uid}");
      return data;
    } catch (errorOnFireStoreController) {
      rethrow;
    }
  }
}
