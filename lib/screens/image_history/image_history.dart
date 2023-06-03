import 'package:farm_monitoring_system/controller/farm_image_controller.dart';
import 'package:farm_monitoring_system/models/captured_image.dart';
import 'package:farm_monitoring_system/screens/view_images/image_detail.dart';
import 'package:farm_monitoring_system/shared/alert_icon.dart';
import 'package:farm_monitoring_system/shared/search.dart';
import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:farm_monitoring_system/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageHistory extends StatefulWidget {
  const ImageHistory({super.key});

  @override
  State<ImageHistory> createState() => _ImageHistoryState();
}

class _ImageHistoryState extends State<ImageHistory> {
  final farmImageController = FarmImageController();
  String query = '';
  late List<CapturedImage> filteredCapturedImages;

  @override
  void initState() {
    super.initState();
    filteredCapturedImages = allTimeCapturedImagesData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "All-time Images history",
          style: GoogleFonts.anton(fontSize: 25),
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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Search(
                  text: query,
                  onChanged: searchImage,
                  hintText: 'Image or Drone Id',
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ListView.builder(
                itemCount: filteredCapturedImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: kSecondaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ImageDetail(
                                      capturedImage:
                                          filteredCapturedImages[index],
                                    );
                                  },
                                ),
                              );
                            },
                            leading: Image.asset(
                              filteredCapturedImages[index].imageUrl,
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                            title: Text(
                              filteredCapturedImages[index].id,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              filteredCapturedImages[index].droneId,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        AlertIcon(
                            hasProblems: filteredCapturedImages[index]
                                .aiData
                                .recomendation),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void searchImage(String query) {
    filteredCapturedImages = allTimeCapturedImagesData.where((captureImage) {
      final titleLower = captureImage.id.toLowerCase();
      final droneLower = captureImage.droneId.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          droneLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
    });
  }
}
