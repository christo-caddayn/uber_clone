import 'package:flutter/material.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/models/ride_details_model.dart';
import 'package:uber/ui/activity/activity_details/activity_details_screen.dart';
import 'package:uber/ui/activity/widgets/rebook_button.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/utils/format_date.dart';

class PastTripCard extends StatelessWidget {
  final RideDetailsModel rideDetailsModel;
  const PastTripCard({super.key, required this.rideDetailsModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (context) => ActivityDetailsScreen(model: rideDetailsModel)),
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.grey, width: 1.4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(8)),
                child: Image.asset(rideDetailsModel.mapPath, height: 150, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 16),
            Text(
              rideDetailsModel.destination.address,
              style: TextStyle(color: AppColors.white, fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              formatDate(date: rideDetailsModel.date, time: rideDetailsModel.startTime),
              style: TextStyle(color: AppColors.white, fontSize: 14),
            ),
            Text(
              "€ ${rideDetailsModel.amount.toStringAsFixed(2)}",
              style: TextStyle(color: AppColors.white, fontSize: 14),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                RebookButton(icon: Assets.icons.iconExtraRateRide, text: 'Rate'),
                SizedBox(width: 12),
                RebookButton(icon: Assets.icons.iconExtraRebook, text: 'Rebook'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
