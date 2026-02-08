import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uber/models/ride_details_model.dart';
import 'package:uber/utils/format_date.dart';
import 'widgets/help_action_tile.dart';
import 'widgets/customer_support_card.dart';
import 'widgets/trip_map_image.dart';
import 'widgets/trip_action_pill.dart';
import 'widgets/trip_location_row.dart';
import 'widgets/trip_info_action_row.dart';
import 'package:uber/utils/colors.dart';

class ActivityDetailsScreen extends StatelessWidget {
  final RideDetailsModel model;

  const ActivityDetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final RideDetailsModel ride = model;

    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///TOP BAR
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.close, color: AppColors.white),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "Trip details",
                          style: TextStyle(color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                  ],
                ),
              ),

              ///MAP IMAGE
              TripMapImage(mapPath: ride.mapPath2.isNotEmpty ? ride.mapPath2 : ride.mapPath),

              const SizedBox(height: 20),

              ///TITLE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "${ride.service} ride with ${ride.driverName}",
                        style: TextStyle(color: AppColors.white, fontSize: 26, fontWeight: FontWeight.w700),
                      ),
                    ),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: AppColors.white, size: 28),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              /// DATE
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "${'${DateFormat("MMM d").format(ride.date)} ${(ride.startTime).toUpperCase()}'}\n"
                  "€${ride.amount.toStringAsFixed(2)}"
                  "${ride.vehicle != null ? " · ${ride.vehicle}" : ""}",
                  style: TextStyle(color: AppColors.white, height: 1.6),
                ),
              ),
              const SizedBox(height: 20),

              ///RECEIPT
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    TripActionPill(icon: Icons.receipt_long, label: "Receipt"),
                    SizedBox(width: 12),
                    TripActionPill(icon: Icons.description, label: "Invoice"),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              ///LOCATIONS
              TripLocationRow(
                isStart: true,
                address: "${ride.start.address}, ${ride.start.postalCode} ${ride.start.city}, ${ride.start.country}",
                time: ride.startTime,
              ),
              SizedBox(height: 6),
              TripLocationRow(
                isStart: false,
                address:
                    "${ride.destination.address}, ${ride.destination.postalCode} ${ride.destination.city}, ${ride.destination.country}",
                time: ride.endTime,
              ),

              CustomDivider(),

              //TIP
              TripInfoActionRow(
                icon: Icons.volunteer_activism,
                text: ride.tip == 0 ? "No tip added" : "€${ride.tip}",
                actionText: ride.tip == 0 ? "Add tip" : "",
              ),

              CustomDivider(),

              //RATING
              TripInfoActionRow(
                icon: Icons.star_border,
                text: ride.rating == 0 ? "No rating" : "Rated ${ride.rating}",
                actionText: ride.rating == 0 ? "Rate" : "",
              ),
              CustomDivider(),

              const SizedBox(height: 32),

              /// Help & safety
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Help & safety",
                  style: TextStyle(color: AppColors.white, fontSize: 23, fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 12),

              HelpActionTile(
                icon: Icons.key,
                title: "Find lost item",
                subtitle: "We can help you get in touch with your driver",
              ),

              CustomDivider(),

              HelpActionTile(
                icon: Icons.shield_outlined,
                title: "Report safety issue",
                subtitle: "Report any safety related issues to us",
              ),

              CustomDivider(),
              SizedBox(height: 12),
              const CustomerSupportCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50),
        Expanded(
          child: Container(height: 0.2, width: double.infinity, color: AppColors.offWhite),
        ),
      ],
    );
  }
}
