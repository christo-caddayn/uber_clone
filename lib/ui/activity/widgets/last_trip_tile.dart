import 'package:flutter/material.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/models/ride_details_model.dart';
import 'package:uber/ui/activity/activity_details/activity_details_screen.dart';
import 'package:uber/ui/activity/widgets/rebook_button.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/utils/format_date.dart';

class LastTripTile extends StatelessWidget {
  final RideDetailsModel rideDetailsModel;
  const LastTripTile({super.key, required this.rideDetailsModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute<void>(builder: (context) => ActivityDetailsScreen(model: rideDetailsModel)),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(8)),
              child: Image.asset(Assets.images.car.path, height: 50, width: 50),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 8),
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: AppColors.black.withValues(alpha: 0.4), width: 0.8)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // rideDetailsModel.destination.address,
                              rideDetailsModel.listTitle.isNotEmpty
                                  ? rideDetailsModel.listTitle
                                  : rideDetailsModel.destination.address,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              formatDate(date: rideDetailsModel.date, time: rideDetailsModel.startTime),
                              style: TextStyle(color: AppColors.white, fontSize: 14),
                            ),
                            Text(
                              "€ ${rideDetailsModel.amount.toString()}",
                              style: TextStyle(color: AppColors.white, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      RebookButton(icon: Assets.icons.iconExtraRebook, text: 'Rebook'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
