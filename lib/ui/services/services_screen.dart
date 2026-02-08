import 'package:flutter/material.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/ui/services/widgets/service_card_large.dart';
import 'package:uber/ui/services/widgets/service_card_small.dart';
import '../../utils/colors.dart';

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
                    color: AppColors.white, fontSize: 32, fontFamily: 'UberMove', fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 12),
              Text(
                'Go anywhere, get anything',
                style: TextStyle(
                    color: AppColors.white, fontFamily: 'UberMove', fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                      child: ServiceCardLarge(
                    title: 'Ride',
                    asset: Assets.images.car,
                  )),
                  const SizedBox(width: 12),
                  Expanded(child: ServiceCardLarge(title: 'Reserve', asset: Assets.images.reserveClockPng)),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(child: ServiceCardSmall(title: '2-Wheels', asset: Assets.images.a2wheels)),
                  const SizedBox(width: 12),
                  Expanded(child: ServiceCardSmall(title: 'Seniors', asset: Assets.images.seniors)),
                  const SizedBox(width: 12),
                  Expanded(child: ServiceCardSmall(title: 'Transit', asset: Assets.icons.train)),
                  const SizedBox(width: 12),
                  Expanded(child: ServiceCardSmall(title: 'Teens', asset: Assets.images.teens)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
