import 'package:flutter/material.dart';
import 'package:uber/ui/inbox/widgets/add_offer_code_bar.dart';
import 'package:uber/ui/inbox/widgets/inbox_filter_button.dart';
import 'package:uber/ui/inbox/widgets/offer_card.dart';
import 'package:uber/utils/colors.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  int selectedFilterIndex = 0;

  final List<String> filters = [
    "All",
    "Offers",
    "Support",
    "Updates",
    "Priority",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),

              /// Title
              Text(
                "Inbox",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: AppColors.white,
                ),
              ),

              const SizedBox(height: 16),

              /// Filter Buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(filters.length, (index) {
                    return InboxFilterButton(
                      title: filters[index],
                      isSelected: selectedFilterIndex == index,
                      onTap: () {
                        setState(() {
                          selectedFilterIndex = index;
                        });
                      },
                    );
                  }),
                ),
              ),

              const SizedBox(height: 20),

              /// OFFER CODE
              const AddOfferCodeBar(),

              const SizedBox(height: 20),

              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(top: 4),
                  itemCount: 1,
                  separatorBuilder: (context, index) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    return const OfferCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
