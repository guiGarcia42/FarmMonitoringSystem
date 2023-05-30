import 'package:farm_monitoring_system/models/captured_image.dart';
import 'package:farm_monitoring_system/screens/view_images/image_detail.dart';
import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  final List<CapturedImage> items = [
    CapturedImage("assets/images/farm_01.jpg", "ID195515435616"),
    CapturedImage("assets/images/farm_02.jpg", "ID195515678940"),
    CapturedImage("assets/images/farm_03.jpg", "ID195515486586"),
    CapturedImage("assets/images/farm_04.jpg", "ID195515454624"),
    CapturedImage("assets/images/farm_05.jpg", "ID195515478542"),
    CapturedImage("assets/images/farm_06.jpg", "ID195515439854"),
    CapturedImage("assets/images/farm_07.jpg", "ID123455439854"),
    CapturedImage("assets/images/farm_08.jpg", "ID123456439854"),
    CapturedImage("assets/images/farm_09.jpg", "ID165697439854"),
    CapturedImage("assets/images/farm_10.jpg", "ID568543439854"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (_, index) {
                if (items.isNotEmpty) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ImageDetail(
                            capturedImage: items[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(items[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          items[index].id,
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
