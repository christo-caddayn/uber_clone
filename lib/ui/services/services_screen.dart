import 'package:flutter/material.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/ui/services/widgets/service_card_large.dart';
import 'package:uber/ui/services/widgets/service_card_small.dart';
import '../../utils/colors.dart';
import '../home/home_screen.dart' show IconsRow;

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Services',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 32,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Go anywhere, get anything',
                style: TextStyle(
                  color: AppColors.white,
                  fontFamily: 'UberMove',
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              // const SizedBox(height: 24),
              // Row(
              //   children: [
              //
              //   ],
              // ),
              const SizedBox(height: 24),
              IconsRow(),
              // Row(
              //   children: [
              //     Expanded(
              //       child: ServiceCardSmall(title: 'Ride', asset: Assets.images.car),
              //     ),
              //     const SizedBox(width: 12),
              //     Expanded(
              //       child: ServiceCardSmall(title: 'Reserve', asset: Assets.images.reserveClockPng),
              //     ),
              //     const SizedBox(width: 12),
              //
              //     Expanded(
              //       child: ServiceCardSmall(
              //         key: ValueKey('wheels'),
              //         title: '2-Wheels',
              //         asset: 'assets/images/ub__ic_bike_default_map_marker.png',
              //         isPng: true,
              //       ),
              //     ),
              //     const SizedBox(width: 12),
              //     Expanded(
              //       child: ServiceCardSmall(
              //         key: ValueKey('seniors'),
              //         title: 'Seniors',
              //         asset: 'assets/images/intercity.png',
              //         isPng: true,
              //         width: 62,
              //         height: 54,
              //         padding: 0,
              //       ),
              //     ),
              //     // const SizedBox(width: 12),
              //     // Expanded(child: ServiceCardSmall(title: 'Transit', asset: Assets.icons.train)),
              //     // const SizedBox(width: 12),
              //     // Expanded(child: ServiceCardSmall(title: 'Teens', asset: Assets.images.teens)),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
