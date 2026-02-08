import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uber/gen/assets.gen.dart';

import '../../../utils/colors.dart';

class ServiceCardSmall extends StatelessWidget {
  final String title;
  final dynamic asset;

  const ServiceCardSmall({required this.title, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildAsset(),
            const SizedBox(height: 5),
            Text(title,
                style: TextStyle(
                    color: AppColors.white, fontSize: 12, fontFamily: 'UberMove', fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  Widget _buildAsset() {
    if (asset is AssetGenImage) {
      return asset.image(height: 50.00, fit: BoxFit.contain);
    } else if (asset is String) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SvgPicture.asset(
          asset,
          height: 42,
          colorFilter: const ColorFilter.mode(Colors.white70, BlendMode.srcIn),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
