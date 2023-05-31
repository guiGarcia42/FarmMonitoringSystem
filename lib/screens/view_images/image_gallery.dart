import 'package:farm_monitoring_system/utils/data.dart';
import 'package:farm_monitoring_system/screens/view_images/image_detail.dart';
import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: getCapturedImage().length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (_, index) {
                if (getCapturedImage().isNotEmpty) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ImageDetail(
                              capturedImage:
                                  getCapturedImage().elementAt(index),
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
                          image: AssetImage(
                              getCapturedImage().elementAt(index).imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          getCapturedImage().elementAt(index).id,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
