import 'package:cloud_firestore/cloud_firestore.dart';

class CloudFireStore {
  static Future getId(String collection) async {
    return FirebaseFirestore.instance.collection(collection);
  }
}
