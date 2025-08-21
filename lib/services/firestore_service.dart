import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/camera_data.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<CameraData>> getCamerasStream() {
    return _firestore
        .collection('cameras')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => CameraData.fromFirestore(doc))
            .toList());
  }

  Stream<CameraData?> getCameraStream(String tableName) {
    return _firestore
        .collection('cameras')
        .doc(tableName)
        .snapshots()
        .map((doc) => doc.exists ? CameraData.fromFirestore(doc) : null);
  }

  Future<List<CameraData>> getAllCameras() async {
    QuerySnapshot snapshot = await _firestore.collection('cameras').get();
    return snapshot.docs
        .map((doc) => CameraData.fromFirestore(doc))
        .toList();
  }
}