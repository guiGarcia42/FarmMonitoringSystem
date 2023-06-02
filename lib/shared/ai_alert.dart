import 'package:farm_monitoring_system/controller/farm_image_controller.dart';
import 'package:farm_monitoring_system/models/ai_data.dart';
import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:flutter/material.dart';

class AiAlert extends StatelessWidget {
  final AiData aiData;
  const AiAlert({super.key, required this.aiData});

  @override
  Widget build(BuildContext context) {
    final farmImageController = FarmImageController();

    if (aiData.recomendation) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: kAlertColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: kAlertColor.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.warning_amber_rounded,
                  size: 50,
                ),
              ),
            ),
            Expanded(
              child: Text(
                farmImageController.getAiRecomendation(aiData),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }
}
