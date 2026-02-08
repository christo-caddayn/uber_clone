import 'package:flutter/material.dart';
import 'package:uber/models/activity_model.dart';
import 'package:uber/ui/account/account_screen.dart';
import 'package:uber/ui/activity/activity_screen.dart';
import 'package:uber/ui/home/home_screen.dart';
import 'package:uber/ui/inbox/inbox_screen.dart';
import 'package:uber/ui/services/services_screen.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';

class BaseWindow extends StatefulWidget {
  const BaseWindow({super.key});

  @override
  State<BaseWindow> createState() => _BaseWindowState();
}

class _BaseWindowState extends State<BaseWindow> with SingleTickerProviderStateMixin {
  int currentScreen = 0;
  ActivityModel? currentDetailsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: currentScreen == 0
                  ? HomeScreen(onSuggestionsTap: () => _onTap(1))
                  : currentScreen == 1
                      ? ServicesScreen()
                      : currentScreen == 2
                          ? ActivityScreen()
                          : currentScreen == 3
                              ? InboxScreen()
                              : AccountScreen(),
            ),
            CustomBottomNavigationBar(onTap: _onTap, currentIndex: currentScreen)
          ],
        ),
      ),
    );
  }

  void _onTap(int a) {
    currentScreen = a;
    _refresh();
  }

  void _refresh() => mounted ? setState(() {}) : null;
}
