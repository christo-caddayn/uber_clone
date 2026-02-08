import 'package:flutter/material.dart';
import 'package:uber/gen/assets.gen.dart';
import '../../utils/colors.dart';
import 'widget/common_bar.dart';
import 'widget/settings_row.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        elevation: 0,
        toolbarHeight: 90,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Eugene Smolski",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star, color: AppColors.white, size: 14),
                  const SizedBox(width: 4),
                  Text(
                    "4.86",
                    style: TextStyle(color: AppColors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              child: const Icon(Icons.person, color: Colors.black),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CommonBar(title: "Personal", icon: Icons.person),
          const SizedBox(height: 11),
          Row(
            children: const [
              Expanded(
                child: CommonBar(
                  title: "Help",
                  icon: Icons.help_outline,
                ),
              ),
              SizedBox(width: 11),
              Expanded(
                child: CommonBar(
                  title: "Wallet",
                  icon: Icons.account_balance_wallet,
                ),
              ),
            ],
          ),
          const SizedBox(height: 11),
          Row(
            children: [
              const Expanded(
                child: CommonBar(
                  title: "Safety",
                  icon: Icons.shield_outlined,
                ),
              ),
              const SizedBox(width: 11),
              Expanded(
                child: CommonBar(title: "Inbox", icon: Icons.mail_outline),
              ),
            ],
          ),
          const SizedBox(height: 11),
          CommonBar(
            title: "User Balance",
            trailing:
                Text('€1,34', style: TextStyle(fontSize: 20, color: AppColors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 11),
          SizedBox(
            height: 120,
            child: CommonBar(
              title: "Uber One",
              subtitle: "€117.67 saved in the last 90 days",
              subtitleColor: Colors.orange,
              trailing: Image.asset(
                Assets.images.uberOne.path,
                height: 60,
              ),
            ),
          ),
          const SizedBox(height: 11),
          const CommonBar(title: "Estimated CO2 Saved"),
          const SizedBox(height: 16),
          SettingsRow(
            icon: Icons.family_restroom,
            title: "Family",
            subtitle: "Manage teen, adult, and senior accounts",
          ),
          SettingsRow(
            icon: Icons.settings,
            title: "Settings",
          ),
          SettingsRow(
            icon: Icons.phone_android,
            title: "Simple mode",
            subtitle: "A simplified app for older adults",
            showNew: true,
          ),
          SettingsRow(
            icon: Icons.card_giftcard,
            title: "Send a gift",
          ),
          SettingsRow(icon: Icons.directions_car, title: "Earn by driving or delivering"),
          SettingsRow(icon: Icons.group, title: "Saved groups", showNew: true),
          SettingsRow(icon: Icons.local_offer, title: "Uber Eats Promotions"),
          SettingsRow(icon: Icons.favorite, title: "Uber Eats Favourite"),
          SettingsRow(icon: Icons.work_outline, title: "Set up your business profile"),
          SettingsRow(icon: Icons.business, title: "Uber for Business"),
          SettingsRow(icon: Icons.emoji_events, title: "Partner Rewards"),
          SettingsRow(icon: Icons.people, title: "Refer friends, unlock deals"),
          SettingsRow(icon: Icons.manage_accounts, title: "Manage Uber account"),
          SettingsRow(icon: Icons.info_outline, title: "Legal"),
        ],
      ),
    );
  }
}
