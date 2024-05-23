import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:st_project/model/st_model.dart';

class StService {
  CollectionReference firestore =
      FirebaseFirestore.instance.collection("details");

  Future<StModel?> addData(StModel model) async {
    try {
      await firestore.doc(model.id).set(model.toJson());
      // return model;
    } catch (e) {
      throw e;
    }
  }

  Stream<List<StModel>> getDatas() {
    return firestore.snapshots().map((snapshot) => snapshot.docs
        .map((doc) => StModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList());
  }

  Future deleteData(String id) async {
    return await firestore.doc(id).delete();
  }
}
