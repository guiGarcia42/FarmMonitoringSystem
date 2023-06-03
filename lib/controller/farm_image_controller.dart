import 'package:farm_monitoring_system/models/ai_data.dart';
import 'package:farm_monitoring_system/models/captured_image.dart';
import 'package:farm_monitoring_system/utils/data.dart';

class FarmImageController {
  List<CapturedImage> recentCapturedImages = [];

  int getTotalProblemsFound() {
    int recentProblemsFound = 0;

    for (var i = 0; i < allTimeCapturedImagesData.length; i++) {
      var aiData = allTimeCapturedImagesData[i].aiData;
      if (aiData.pests != Pests.none) {
        recentProblemsFound++;
      }
      if (aiData.needNutrient) {
        recentProblemsFound++;
      }
      if (aiData.needIrrigation) {
        recentProblemsFound++;
      }
    }
    return recentProblemsFound;
  }

  List<CapturedImage> getRecentCapturedImages() {
    for (var i = 0; i < allTimeCapturedImagesData.length; i++) {
      if (allTimeCapturedImagesData[i]
          .date
          .isAfter(DateTime.now().subtract(const Duration(days: 7)))) {
        recentCapturedImages.add(allTimeCapturedImagesData[i]);
      }
    }
    return recentCapturedImages;
  }

  int getRecentProblemsFound() {
    int recentProblemsFound = 0;

    for (var i = 0; i < recentCapturedImages.length; i++) {
      var aiData = recentCapturedImages[i].aiData;
      if (aiData.pests != Pests.none) {
        recentProblemsFound++;
      }
      if (aiData.needNutrient) {
        recentProblemsFound++;
      }
      if (aiData.needIrrigation) {
        recentProblemsFound++;
      }
    }
    return recentProblemsFound;
  }

  String getPlantSpecie(AiData data) {
    String plantSpecie = "Not Identified";
    switch (data.plantSpecie) {
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
    return plantSpecie;
  }

  String getPest(AiData data) {
    String pest = "Not Identified";
    switch (data.pests) {
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
    return pest;
  }

  String getNeedNutrients(AiData data) {
    String needNutrient = "No";
    if (data.needNutrient) {
      needNutrient = "Yes";
    }
    return needNutrient;
  }

  String getNeedIrrigation(AiData data) {
    String needIrrigation = "No";
    if (data.needIrrigation) {
      needIrrigation = "Yes";
    }
    return needIrrigation;
  }

  String getAiRecomendation(AiData data) {
    String aiRecomendation = "";
    if (data.pests != Pests.none) {
      aiRecomendation += "Fumigate the area against pests\n";
    }
    if (data.needNutrient) {
      aiRecomendation += "Fertilize the soil with more nutrients\n";
    }
    if (data.needIrrigation) {
      aiRecomendation += "Water the soil";
    }
    return aiRecomendation;
  }
}
