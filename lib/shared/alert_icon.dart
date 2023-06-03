import 'package:farm_monitoring_system/utils/constants.dart';
import 'package:flutter/material.dart';

class AlertIcon extends StatelessWidget {
  final bool hasProblems;
  const AlertIcon({super.key, required this.hasProblems});

  @override
  Widget build(BuildContext context) {
    if (hasProblems) {
      return Container(
        height: 45,
        width: 45,
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kAlertColor,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: const Align(
          alignment: Alignment.topCenter,
          child: Icon(
            Icons.warning_amber_rounded,
            size: 35,
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
