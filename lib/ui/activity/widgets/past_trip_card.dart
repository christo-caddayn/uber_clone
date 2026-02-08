import 'package:flutter/material.dart';
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
        MaterialPageRoute<void>(
          builder: (context) => ActivityDetailsScreen(
            model: rideDetailsModel,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.grey, width: 1.4),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(rideDetailsModel.mapPath),
            SizedBox(height: 16),
            Text(rideDetailsModel.destination.address, style: TextStyle(color: AppColors.white, fontSize: 16)),
            Text(
              formatDate(date: rideDetailsModel.date, time: rideDetailsModel.startTime),
              style: TextStyle(color: AppColors.offWhite, fontSize: 12),
            ),
            Text("\$15.88", style: TextStyle(color: AppColors.offWhite, fontSize: 12)),
            SizedBox(height: 8),
            RebookButton(),
          ],
        ),
      ),
    );
  }
}
