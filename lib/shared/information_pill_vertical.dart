import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalInfoPill extends StatelessWidget {
  final int data;
  final String description;
  final Color theme;

  const VerticalInfoPill(
      {super.key,
      required this.data,
      required this.description,
      required this.theme});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: theme,
          boxShadow: [
            BoxShadow(
              color: theme.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 6),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "$data",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.anton(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
