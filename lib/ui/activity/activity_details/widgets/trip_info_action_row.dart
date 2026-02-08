import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';

class TripInfoActionRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String actionText;

  const TripInfoActionRow({
    super.key,
    required this.icon,
    required this.text,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(icon, color: AppColors.white),
          const SizedBox(width: 12),
          Expanded(
            child: Text(text, style: TextStyle(color: AppColors.white)),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              actionText,
              style: TextStyle(color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
