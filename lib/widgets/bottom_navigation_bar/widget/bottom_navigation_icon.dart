import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/widgets/svg_image.dart';

class BottomNavigationIcon extends StatelessWidget {
  final String icon;
  final String iconActive;
  final String text;
  final int index;
  final int currentIndex;
  final Function(int) onTap;
  const BottomNavigationIcon({
    super.key,
    required this.icon,
    required this.iconActive,
    required this.text,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        children: [
          SvgImage(
            image: currentIndex == index ? iconActive : icon,
            color: currentIndex == index ? AppColors.white : AppColors.offWhite,
            height: 18,
            width: 26,
          ),
          SizedBox(height: 4),
          Text(
            text,
            style: TextStyle(color: currentIndex == index ? AppColors.white : AppColors.offWhite, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
