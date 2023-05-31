import 'package:farm_monitoring_system/screens/home_page/home_page.dart';
import 'package:farm_monitoring_system/screens/image_history/image_history.dart';
import 'package:farm_monitoring_system/screens/view_images/image_gallery.dart';
import 'package:flutter/material.dart';
import 'package:farm_monitoring_system/utils/constants.dart';

class Master extends StatefulWidget {
  const Master({super.key});

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: page,
      children: [
        HomePage(),
        ImageGallery(),
        ImageHistory(),
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: kSecondaryColor,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: Colors.grey[400],
      currentIndex: page,
      onTap: (index) {
        setState(
          () {
            page = index;
          },
        );
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.image_search_rounded),
          label: 'View Images',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history_rounded),
          label: 'Image History',
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
