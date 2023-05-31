import 'package:farm_monitoring_system/shared/description_text.dart';
import 'package:farm_monitoring_system/shared/information_pill_horizontal.dart';
import 'package:farm_monitoring_system/shared/information_pill_vertical.dart';
import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:farm_monitoring_system/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int recentProblemsFound = 0;
    int totalProblems = 87;

    for (var i = 0; i < getCapturedImage().length; i++) {
      if (getCapturedImage().elementAt(i).pests != Pests.none) {
        recentProblemsFound++;
      }
      if (getCapturedImage().elementAt(i).needNutrient) {
        recentProblemsFound++;
      }
      if (getCapturedImage().elementAt(i).needIrrigation) {
        recentProblemsFound++;
      }
    }

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
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: kSecondaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: kSecondaryColor.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
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
                    DescriptionText(
                      text:
                          "This application is designed to monitor plantations using drones and generative AI. The system comprises drones that monitor crops, capturing images and sending them to a generative AI. Here you can see general information about the system and the monitored plantations, along with captured images in a gallery showing all the information extracted by the generative AI for each selected image, including crop identification, pest and disease detection, nutrient deficiency, and irrigation needs. It presents tailored recommendations from the AI to enhance crop productivity.",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  HorizontalInfoPill(
                    data: droneCode.length,
                    description: "Active Drones",
                    theme: kSecondaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  HorizontalInfoPill(
                    data: getCapturedImage().length,
                    description: "Captured Images",
                    theme: kSecondaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: kAlertColor,
                  boxShadow: [
                    BoxShadow(
                      color: kAlertColor.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
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
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Important Information",
                      style: GoogleFonts.bebasNeue(
                          fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  VerticalInfoPill(
                    data: recentProblemsFound,
                    description: "Recent Problems Found",
                    theme: kAlertColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VerticalInfoPill(
                    data: totalProblems,
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
