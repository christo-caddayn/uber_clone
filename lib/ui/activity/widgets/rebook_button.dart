import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber/utils/colors.dart';

class RebookButton extends StatelessWidget {
  final String text;
  final String icon;
  const RebookButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => log("Button tapped"),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(color: AppColors.surface, borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 3),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                icon,
                height: 14,
                width: 14,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
              SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(color: AppColors.white, fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
