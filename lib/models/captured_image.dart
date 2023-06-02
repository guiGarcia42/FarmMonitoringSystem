import 'package:farm_monitoring_system/models/ai_data.dart';

class CapturedImage {
  String id;
  String droneCoordinates;
  String droneId;
  String imageUrl;
  DateTime date;
  AiData aiData;

  CapturedImage(this.imageUrl, this.id, this.droneId, this.droneCoordinates,
      this.date, this.aiData);
}
