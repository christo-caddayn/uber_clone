import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/gen/assets.gen.dart';

class ServiceCardLarge extends StatelessWidget {
  final String title;
  final dynamic asset;

  const ServiceCardLarge({
    super.key,
    required this.title,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(
                color: AppColors.white,
                fontFamily: 'UberMove',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: _buildAsset(),
          ),
        ],
      ),
    );
  }

  Widget _buildAsset() {
    if (asset is AssetGenImage) {
      return asset.image(height: 60.00, fit: BoxFit.contain);
    } else if (asset is String) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SvgPicture.asset(
          asset,
          height: 40,
          colorFilter: const ColorFilter.mode(Colors.white70, BlendMode.srcIn),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
