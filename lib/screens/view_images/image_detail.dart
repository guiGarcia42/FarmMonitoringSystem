import 'package:farm_monitoring_system/models/captured_image.dart';
import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  final CapturedImage capturedImage;

  const ImageDetail({super.key, required this.capturedImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(capturedImage.id),
    );
  }
}
