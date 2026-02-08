import 'package:flutter/material.dart';
import 'package:uber/utils/colors.dart';

class ServiceItem extends StatelessWidget {
  final String label;
  final Widget icon;
  final bool isPromo;

  const ServiceItem({
    super.key,
    required this.label,
    required this.icon,
    this.isPromo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 86,
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  //const SizedBox(height: 4),
                  Text(
                    label,
                    style: TextStyle(color: AppColors.white, fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ],
              ),
            ),
            if (isPromo)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F9D55), // Uber Green
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.black, width: 2), // Outline matches bg
                  ),
                  child: const Text(
                    "Promo",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
