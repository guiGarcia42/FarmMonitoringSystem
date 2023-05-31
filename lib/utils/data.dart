class CapturedImage {
  String id;
  String droneCoordinates;
  String droneId;
  String imageUrl;
  Enum plantSpecie;
  Enum pests;
  bool needNutrient;
  bool needIrrigation;

  CapturedImage(
    this.imageUrl,
    this.id,
    this.plantSpecie,
    this.pests,
    this.droneId,
    this.needNutrient,
    this.needIrrigation,
    this.droneCoordinates,
  );
}

List<String> droneCode = [
  "Drone01",
  "Drone02",
  "Drone03",
  "Drone04",
  "Drone05",
];

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

List<CapturedImage> getCapturedImage() {
  return <CapturedImage>[
    CapturedImage(
      "assets/images/cane_sugar_farm_01.jpg",
      "ID195515435616",
      PlantSpecies.caneSugar,
      Pests.none,
      droneCode[0],
      false,
      false,
      "19º55’15’’ S & 43º56’16’’ W",
    ),
    CapturedImage(
      "assets/images/maize_farm_01.jpg",
      "ID195515678940",
      PlantSpecies.maize,
      Pests.none,
      droneCode[1],
      false,
      true,
      "19º55’15’’ S & 67º89’40’’ W",
    ),
    CapturedImage(
      "assets/images/maize_farm_02.jpg",
      "ID195515486586",
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      droneCode[1],
      false,
      true,
      "19º55’15’’ S & 48º65’86’’ W",
    ),
    CapturedImage(
      "assets/images/maize_farm_03.jpg",
      "ID195515454624",
      PlantSpecies.maize,
      Pests.armyworms,
      droneCode[4],
      true,
      false,
      "19º55’15’’ S & 45º46’24’’ W",
    ),
    CapturedImage(
      "assets/images/cane_sugar_farm_02.jpg",
      "ID195515478542",
      PlantSpecies.caneSugar,
      Pests.armyworms,
      droneCode[3],
      true,
      true,
      "19º55’15’’ S & 47º85’42’’ W",
    ),
    CapturedImage(
      "assets/images/wheat_farm_01.jpg",
      "ID195515439854",
      PlantSpecies.wheat,
      Pests.armyworms,
      droneCode[2],
      false,
      false,
      "19º55’15’’ S & 43º98’54’’ W",
    ),
    CapturedImage(
      "assets/images/wheat_farm_02.jpg",
      "ID123455439854",
      PlantSpecies.wheat,
      Pests.none,
      droneCode[1],
      false,
      false,
      "12º34’55’’ S & 43º98’54’’ W",
    ),
    CapturedImage(
      "assets/images/cane_sugar_farm_03.jpg",
      "ID123456439854",
      PlantSpecies.caneSugar,
      Pests.rodents,
      droneCode[0],
      false,
      false,
      "12º34’56’’ S & 43º98’54’’ W",
    ),
    CapturedImage(
      "assets/images/maize_farm_04.jpg",
      "ID165697439854",
      PlantSpecies.maize,
      Pests.cerealLeafBeetle,
      droneCode[2],
      true,
      true,
      "16º56’97’’ S & 43º98’54’’ W",
    ),
    CapturedImage(
      "assets/images/wheat_farm_03.jpg",
      "ID568543439854",
      PlantSpecies.wheat,
      Pests.none,
      droneCode[1],
      true,
      true,
      "56º85’43’’ S & 43º98’54’’ W",
    ),
  ];
}
