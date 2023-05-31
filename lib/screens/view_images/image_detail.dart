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
      body: Column(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.only(bottom: 16),
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
                  padding: EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Color(0xFFF4BA0B),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
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
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Icon(
                        Icons.warning_amber_rounded,
                        size: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          capturedImage.id,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch, //VER
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  DetailField(
                    title: "Image Id:",
                    data: capturedImage.id,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DetailField(
                    title: "Drone Id:",
                    data: capturedImage.droneId,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DetailField(
                    title: "Drone Coordinates:",
                    data: capturedImage.droneCoordinates,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DetailField(
                    title: "Plant Specie:",
                    data: plantSpecie,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DetailField(
                    title: "Pests:",
                    data: pest,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DetailField(
                    title: "Does it needs more Nutrients?",
                    data: needNutrient,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DetailField(
                    title: "Does it needs more Irrigation?",
                    data: needIrrigation,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
