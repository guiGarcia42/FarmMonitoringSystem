import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:farm_monitoring_system/utils/data.dart';
import 'package:flutter/material.dart';

class AiAlert extends StatelessWidget {
  final CapturedImage capturedImage;
  const AiAlert({super.key, required this.capturedImage});

  @override
  Widget build(BuildContext context) {
    String aiRecomendation = "";
    if (capturedImage.pests != Pests.none) {
      aiRecomendation += "Fumigate the area against pests\n";
    }
    if (capturedImage.needNutrient) {
      aiRecomendation += "Fertilize the soil with more nutrients\n";
    }
    if (capturedImage.needIrrigation) {
      aiRecomendation += "Water the soil";
    }
    print(aiRecomendation);

    if (capturedImage.recomendation) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: kAlertColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: kAlertColor.withOpacity(0.4),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
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
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                aiRecomendation,
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
