import 'package:farm_monitoring_system/controller/farm_image_controller.dart';
import 'package:farm_monitoring_system/utils/data.dart';
import 'package:farm_monitoring_system/screens/view_images/image_detail.dart';
import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
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
          "Captured Images in the last 7 days",
          style: GoogleFonts.anton(fontSize: 20),
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
      body: GridView.builder(
        itemCount: farmImageController.recentCapturedImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ImageDetail(
                      capturedImage:
                          farmImageController.recentCapturedImages[index],
                    );
                  },
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(allTimeCapturedImagesData[index].imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  allTimeCapturedImagesData[index].id,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
