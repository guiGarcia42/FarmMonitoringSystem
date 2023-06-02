import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalInfoPill extends StatelessWidget {
  final int data;
  final String description;
  final Color theme;
  const HorizontalInfoPill(
      {super.key,
      required this.data,
      required this.description,
      required this.theme});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: theme,
          boxShadow: [
            BoxShadow(
              color: theme.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              margin: const EdgeInsets.only(right: 15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 4),
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
            Expanded(
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: GoogleFonts.anton(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
