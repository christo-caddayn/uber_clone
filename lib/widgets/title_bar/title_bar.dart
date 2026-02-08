import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';

class TitleBar extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget? trailing;

  const TitleBar({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
          if (leading != null)
            Positioned(
              left: 0,
              child: leading!,
            ),
          if (trailing != null)
            Positioned(
              right: 0,
              child: trailing!,
            ),
        ],
      ),
    );
  }
}
