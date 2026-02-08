import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/utils/colors.dart';

class RebookButton extends StatelessWidget {
  const RebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log("Button tapped"),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(color: AppColors.surface, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.icons.iconExtraRebook,
              height: 14,
              width: 14,
              colorFilter: ColorFilter.mode(AppColors.offWhite, BlendMode.srcIn),
            ),
            SizedBox(width: 8),
            Text(
              "Rebook",
              style: TextStyle(color: AppColors.white, fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingButton extends StatelessWidget {
  const RatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log("Button tapped"),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(color: AppColors.surface, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              Assets.icons.iconExtraRateRide,
              height: 14,
              width: 14,
              colorFilter: ColorFilter.mode(AppColors.offWhite, BlendMode.srcIn),
            ),
            SizedBox(width: 8),
            Text(
              "Rate",
              style: TextStyle(color: AppColors.white, fontSize: 12, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
