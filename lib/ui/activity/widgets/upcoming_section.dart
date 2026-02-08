import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/utils/colors.dart';

class UpcomingSection extends StatelessWidget {
  const UpcomingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.grey, width: 1.4),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You have no upcoming trips",
                    style: TextStyle(color: AppColors.white, fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text("Reserve your ride", style: TextStyle(color: AppColors.white, fontSize: 14)),
                      SizedBox(width: 4),
                      SvgPicture.asset(
                        Assets.icons.arrowRight,
                        colorFilter: ColorFilter.mode(AppColors.offWhite, BlendMode.srcIn),
                        height: 14,
                        width: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image.asset(Assets.images.reserveClockPng.path, height: 65, width: 65),
        ],
      ),
    );
  }
}
