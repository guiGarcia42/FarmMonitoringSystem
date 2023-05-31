import 'package:farm_monitoring_system/shared/ai_alert.dart';
import 'package:farm_monitoring_system/shared/detail_field.dart';
import 'package:farm_monitoring_system/utils/data.dart';
import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  final CapturedImage capturedImage;

  const ImageDetail({
    super.key,
    required this.capturedImage,
  });

  @override
  Widget build(BuildContext context) {
    String plantSpecie = "Not Identified";
    String pest = "Not Identified";
    String needNutrient = "No";
    String needIrrigation = "No";

    switch (capturedImage.plantSpecie) {
      case PlantSpecies.caneSugar:
        plantSpecie = "Cane Sugar";
        break;
      case PlantSpecies.maize:
        plantSpecie = "Maize";
        break;
      case PlantSpecies.wheat:
        plantSpecie = "Wheat";
        break;
    }

    switch (capturedImage.pests) {
      case Pests.rodents:
        pest = "Rodents";
        break;
      case Pests.cerealLeafBeetle:
        pest = "Cereal Leaf Beetle";
        break;
      case Pests.armyworms:
        pest = "Armyworms";
        break;
    }

    if (capturedImage.needNutrient) {
      needNutrient = "Yes";
    }
    if (capturedImage.needIrrigation) {
      needIrrigation = "Yes";
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: <Color>[kBackgroundColor, kAppBarColor],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(capturedImage.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                color: kAppBarColor,
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: kSecondaryColor.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                "Image Details:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: AiAlert(capturedImage: capturedImage),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, //VER
                  children: [
                    DetailField(
                      title: "Image Id:",
                      data: capturedImage.id,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DetailField(
                      title: "Drone Id:",
                      data: capturedImage.droneId,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DetailField(
                      title: "Drone Coordinates:",
                      data: capturedImage.droneCoordinates,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DetailField(
                      title: "Plant Specie:",
                      data: plantSpecie,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DetailField(
                      title: "Pests:",
                      data: pest,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DetailField(
                      title: "Does it needs more Nutrients?",
                      data: needNutrient,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DetailField(
                      title: "Does it needs more Irrigation?",
                      data: needIrrigation,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
