import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageHistory extends StatelessWidget {
  const ImageHistory({super.key});

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
      body: Container(),
    );
  }
}
