import 'package:farm_monitoring_system/models/ai_data.dart';
import '../models/captured_image.dart';

enum PlantSpecies {
  none,
  caneSugar,
  maize,
  wheat,
}

enum Pests {
  none,
  rodents,
  cerealLeafBeetle,
  armyworms,
}

List<String> droneCode = [
  "Drone01",
  "Drone02",
  "Drone03",
  "Drone04",
  "Drone05",
];

final allTimeCapturedImagesData = <CapturedImage>[
  CapturedImage(
    "assets/images/cane_sugar_farm_01.jpg",
    "ID195515435616",
    droneCode[0],
    "19º55’15’’ S & 43º56’16’’ W",
    DateTime.utc(2023, 06, 08),
    AiData(
      PlantSpecies.caneSugar,
      Pests.none,
      false,
      false,
      false,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_01.jpg",
    "ID195515678940",
    droneCode[1],
    "19º55’15’’ S & 67º89’40’’ W",
    DateTime.utc(2023, 06, 08),
    AiData(
      PlantSpecies.maize,
      Pests.none,
      false,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_02.jpg",
    "ID195515486586",
    droneCode[1],
    "19º55’15’’ S & 48º65’86’’ W",
    DateTime.utc(2023, 06, 07),
    AiData(
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      false,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_03.jpg",
    "ID195515454624",
    droneCode[4],
    "19º55’15’’ S & 45º46’24’’ W",
    DateTime.utc(2023, 06, 06),
    AiData(
      PlantSpecies.maize,
      Pests.armyworms,
      true,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_02.jpg",
    "ID195515478542",
    droneCode[3],
    "19º55’15’’ S & 47º85’42’’ W",
    DateTime.utc(2023, 06, 06),
    AiData(
      PlantSpecies.caneSugar,
      Pests.armyworms,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_01.jpg",
    "ID195515439854",
    droneCode[2],
    "19º55’15’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 06, 04),
    AiData(
      PlantSpecies.wheat,
      Pests.armyworms,
      false,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_02.jpg",
    "ID123455439854",
    droneCode[1],
    "12º34’55’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 06, 05),
    AiData(
      PlantSpecies.wheat,
      Pests.none,
      false,
      false,
      false,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_03.jpg",
    "ID123456439854",
    droneCode[0],
    "12º34’56’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 06, 03),
    AiData(
      PlantSpecies.caneSugar,
      Pests.rodents,
      false,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_04.jpg",
    "ID165697439854",
    droneCode[2],
    "16º56’97’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 06, 03),
    AiData(
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_03.jpg",
    "ID568543439854",
    droneCode[1],
    "56º85’43’’ S & 43º98’54’’ W",
    DateTime(2023, 06, 3),
    AiData(
      PlantSpecies.wheat,
      Pests.none,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_01.jpg",
    "ID185515435616",
    droneCode[0],
    "19º55’15’’ S & 43º56’16’’ W",
    DateTime.utc(2023, 05, 02),
    AiData(
      PlantSpecies.caneSugar,
      Pests.none,
      false,
      false,
      false,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_01.jpg",
    "ID195515678940",
    droneCode[1],
    "19º55’15’’ S & 67º89’40’’ W",
    DateTime.utc(2023, 05, 02),
    AiData(
      PlantSpecies.maize,
      Pests.none,
      false,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_02.jpg",
    "ID198515486586",
    droneCode[1],
    "19º55’15’’ S & 48º65’86’’ W",
    DateTime.utc(2023, 05, 01),
    AiData(
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      false,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_03.jpg",
    "ID195815454624",
    droneCode[4],
    "19º55’15’’ S & 45º46’24’’ W",
    DateTime.utc(2023, 04, 31),
    AiData(
      PlantSpecies.maize,
      Pests.armyworms,
      true,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_02.jpg",
    "ID195815478542",
    droneCode[3],
    "19º55’15’’ S & 47º85’42’’ W",
    DateTime.utc(2023, 04, 31),
    AiData(
      PlantSpecies.caneSugar,
      Pests.armyworms,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_01.jpg",
    "ID895515439854",
    droneCode[2],
    "19º55’15’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 04, 28),
    AiData(
      PlantSpecies.wheat,
      Pests.armyworms,
      false,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_02.jpg",
    "ID123458439854",
    droneCode[1],
    "12º34’55’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 04, 29),
    AiData(
      PlantSpecies.wheat,
      Pests.none,
      false,
      false,
      false,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_03.jpg",
    "ID128456439854",
    droneCode[0],
    "12º34’56’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 04, 27),
    AiData(
      PlantSpecies.caneSugar,
      Pests.rodents,
      false,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_04.jpg",
    "ID168697439854",
    droneCode[2],
    "16º56’97’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 04, 26),
    AiData(
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_03.jpg",
    "ID568543489854",
    droneCode[1],
    "56º85’43’’ S & 43º98’54’’ W",
    DateTime(2023, 04, 26),
    AiData(
      PlantSpecies.wheat,
      Pests.none,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_01.jpg",
    "ID198515435616",
    droneCode[0],
    "19º55’15’’ S & 43º56’16’’ W",
    DateTime.utc(2023, 03, 02),
    AiData(
      PlantSpecies.caneSugar,
      Pests.none,
      false,
      false,
      false,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_01.jpg",
    "ID195515678840",
    droneCode[1],
    "19º55’15’’ S & 67º89’40’’ W",
    DateTime.utc(2023, 03, 02),
    AiData(
      PlantSpecies.maize,
      Pests.none,
      false,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_02.jpg",
    "ID195515486886",
    droneCode[1],
    "19º55’15’’ S & 48º65’86’’ W",
    DateTime.utc(2023, 03, 01),
    AiData(
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      false,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_03.jpg",
    "ID195515454824",
    droneCode[4],
    "19º55’15’’ S & 45º46’24’’ W",
    DateTime.utc(2023, 03, 31),
    AiData(
      PlantSpecies.maize,
      Pests.armyworms,
      true,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_02.jpg",
    "ID195515478842",
    droneCode[3],
    "19º55’15’’ S & 47º85’42’’ W",
    DateTime.utc(2023, 03, 31),
    AiData(
      PlantSpecies.caneSugar,
      Pests.armyworms,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_01.jpg",
    "ID195515438854",
    droneCode[2],
    "19º55’15’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 03, 28),
    AiData(
      PlantSpecies.wheat,
      Pests.armyworms,
      false,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_02.jpg",
    "ID123455439858",
    droneCode[1],
    "12º34’55’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 03, 29),
    AiData(
      PlantSpecies.wheat,
      Pests.none,
      false,
      false,
      false,
    ),
  ),
  CapturedImage(
    "assets/images/cane_sugar_farm_03.jpg",
    "ID123456839854",
    droneCode[0],
    "12º34’56’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 03, 27),
    AiData(
      PlantSpecies.caneSugar,
      Pests.rodents,
      false,
      false,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/maize_farm_04.jpg",
    "ID865697439854",
    droneCode[2],
    "16º56’97’’ S & 43º98’54’’ W",
    DateTime.utc(2023, 03, 26),
    AiData(
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      true,
      true,
      true,
    ),
  ),
  CapturedImage(
    "assets/images/wheat_farm_03.jpg",
    "ID568543439858",
    droneCode[1],
    "56º85’43’’ S & 43º98’54’’ W",
    DateTime(2023, 03, 26),
    AiData(
      PlantSpecies.wheat,
      Pests.none,
      true,
      true,
      true,
    ),
  ),
];
