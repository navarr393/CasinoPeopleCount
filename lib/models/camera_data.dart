import 'package:cloud_firestore/cloud_firestore.dart';

class CameraData {
  final int count;
  final String device;
  final String host;
  final String ip;
  final DateTime updatedAt;

  CameraData({
    required this.count,
    required this.device,
    required this.host,
    required this.ip,
    required this.updatedAt,
  });

  factory CameraData.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return CameraData(
      count: data['count'] ?? 0,
      device: data['device'] ?? '',
      host: data['host'] ?? '',
      ip: data['ip'] ?? '',
      updatedAt: (data['updatedAt'] as Timestamp).toDate(),
    );
  }
}