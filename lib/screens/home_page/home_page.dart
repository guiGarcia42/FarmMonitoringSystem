import 'package:farm_monitoring_system/controller/farm_image_controller.dart';
import 'package:farm_monitoring_system/shared/description_text.dart';
import 'package:farm_monitoring_system/shared/information_pill_horizontal.dart';
import 'package:farm_monitoring_system/shared/information_pill_vertical.dart';
import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:farm_monitoring_system/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final farmImageController = FarmImageController();
  @override
  void initState() {
    farmImageController.getRecentCapturedImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Farm Monitoring System",
          style: GoogleFonts.bebasNeue(fontSize: 35),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[kBackgroundColor, kAppBarColor],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: kSecondaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: kSecondaryColor.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "About this App:",
                      style: GoogleFonts.anton(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const DescriptionText(
                      text:
                          "This application is designed to monitor plantations using drones and generative AI. The system comprises drones that monitor crops, capturing images and sending them to a generative AI. Here you can see general information about the system and the monitored plantations, along with captured images in a gallery showing all the information extracted by the generative AI for each selected image, including crop identification, pest and disease detection, nutrient deficiency, and irrigation needs. It presents tailored recommendations from the AI to enhance crop productivity.",
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  HorizontalInfoPill(
                    data: droneCode.length,
                    description: "Active Drones",
                    theme: kSecondaryColor,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  HorizontalInfoPill(
                    data: allTimeCapturedImagesData.length,
                    description: "Captured Images",
                    theme: kSecondaryColor,
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: kAlertColor,
                  boxShadow: [
                    BoxShadow(
                      color: kAlertColor.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Important Information",
                      style: GoogleFonts.bebasNeue(
                          fontSize: 30, color: Colors.white),
                    ),
                    const Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  VerticalInfoPill(
                    data: farmImageController.getRecentProblemsFound(),
                    description: "Recent Problems Found",
                    theme: kAlertColor,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  VerticalInfoPill(
                    data: farmImageController.getTotalProblemsFound(),
                    description: "Total Problems Found",
                    theme: kAlertColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
