import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/widgets/svg_image.dart';
import 'package:uber/gen/assets.gen.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(48),
        border: Border.all(color: AppColors.white, width: 0.6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          SvgImage(
            image: Assets.icons.search,
            height: 18,
            width: 18,
            color: AppColors.white,
          ),
          const SizedBox(width: 8),
          Text(
            "Where to?",
            style: TextStyle(
              color: AppColors.offWhite,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Container(
            height: 36,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(36),
            ),
            child: Row(
              children: [
                SvgImage(
                  image: Assets.icons.calendar,
                  height: 16,
                  width: 16,
                  color: AppColors.white,
                ),
                const SizedBox(width: 6),
                Text(
                  "Later",
                  style: TextStyle(color: AppColors.white, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
