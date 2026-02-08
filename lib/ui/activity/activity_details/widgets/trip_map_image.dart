import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';

class TripMapImage extends StatelessWidget {
  final String mapPath;

  const TripMapImage({super.key, required this.mapPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 160,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.black),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(mapPath, fit: BoxFit.fitWidth, width: double.infinity),
      ),
    );
  }
}
