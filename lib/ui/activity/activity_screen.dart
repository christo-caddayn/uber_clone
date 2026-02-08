import 'package:flutter/material.dart';
import 'package:uber/data/trip_data.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/ui/activity/widgets/last_trip_tile.dart';
import 'package:uber/ui/activity/widgets/past_trip_card.dart';
import 'package:uber/ui/activity/widgets/upcoming_section.dart';
import 'package:uber/utils/colors.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Activity", style: TextStyle(color: AppColors.white, fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Trip Details", style: TextStyle(color: AppColors.white, fontSize: 16)),
                  SizedBox(height: 16),
                  UpcomingSection(),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Past", style: TextStyle(color: AppColors.white, fontSize: 16)),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.surface),
                        height: 24,
                        width: 24,
                        child: Image.asset(Assets.images.filter.path),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  PastTripCard(rideDetailsModel: tripData.first),
                  SizedBox(height: 24),
                  ListView.separated(
                    itemCount: tripData.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => LastTripTile(rideDetailsModel: tripData[index]),
                    separatorBuilder: (context, _) => SizedBox(height: 16),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
