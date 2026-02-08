import 'package:flutter/material.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/widgets/svg_image.dart';

class CustomerSupportCard extends StatelessWidget {
  const CustomerSupportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            SvgImage(image: Assets.icons.iconExtraCustomerSupport, height: 18, width: 18, color: AppColors.white),

            SizedBox(width: 12),
            Expanded(
              child: Text(
                "Customer support",
                style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            SvgImage(image: Assets.icons.iconExtraArrow, height: 18, width: 18, color: AppColors.white),
          ],
        ),
      ),
    );
  }
}
