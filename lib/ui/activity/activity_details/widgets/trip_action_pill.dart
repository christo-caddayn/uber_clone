import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/widgets/svg_image.dart';

class TripActionPill extends StatelessWidget {
  final String icon;
  final String label;

  const TripActionPill({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(24)),
      child: Row(
        children: [
          SvgImage(image: icon, height: 20, width: 20, color: AppColors.white),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
