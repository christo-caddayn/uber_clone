import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';

class TripLocationRow extends StatelessWidget {
  final bool isStart;
  final String address;
  final String time;

  const TripLocationRow({super.key, required this.isStart, required this.address, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Icon(isStart ? Icons.radio_button_checked : Icons.crop_square, size: 14, color: AppColors.white),
          const SizedBox(width: 20),
          Expanded(
            child: Text(address, style: TextStyle(color: AppColors.white)),
          ),
          Text(time.toUpperCase(), style: TextStyle(color: AppColors.white)),
        ],
      ),
    );
  }
}
