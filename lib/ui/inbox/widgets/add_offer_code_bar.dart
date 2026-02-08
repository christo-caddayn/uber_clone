import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart' show AppColors;

class AddOfferCodeBar extends StatelessWidget {
  const AddOfferCodeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Icon(Icons.local_offer_outlined, color: Colors.grey),
          SizedBox(width: 16),
          Text(
            "Add offer code",
            style: TextStyle(
              color: Color(0xFF9E9E9E),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
