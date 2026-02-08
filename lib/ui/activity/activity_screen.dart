import 'package:flutter/material.dart';
import 'package:uber/data/trip_data.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/models/ride_details_model.dart';
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
          SizedBox(height: 60),
          Text(
            "Activity",
            style: TextStyle(color: AppColors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Upcoming",
                      style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(height: 16),
                  UpcomingSection(),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Past",
                        style: TextStyle(color: AppColors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
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
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        index == 0 ? SizedBox() : LastTripTile(rideDetailsModel: tripData[index]),
                    separatorBuilder: (context, index) => index == 0
                        ? SizedBox()
                        : Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                SizedBox(width: 80),
                                Expanded(
                                  child: Container(height: 0.2, width: double.infinity, color: AppColors.offWhite),
                                ),
                              ],
                            ),
                          ),
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
