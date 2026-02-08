import 'package:flutter/material.dart';
import 'package:uber/gen/assets.gen.dart';
import 'package:uber/utils/colors.dart';
import 'package:uber/widgets/bottom_navigation_bar/widget/bottom_navigation_icon.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomNavigationBar({super.key, required this.currentIndex, required this.onTap});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      decoration: BoxDecoration(
        color: AppColors.black,
        boxShadow: [BoxShadow(color: AppColors.black, blurRadius: 8, offset: const Offset(0, -8))],
      ),
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavigationIcon(
            icon: Assets.icons.home,
            text: 'Home',
            index: 0,
            currentIndex: widget.currentIndex,
            onTap: widget.onTap,
          ),
          BottomNavigationIcon(
            icon: Assets.icons.services,
            text: 'Services',
            index: 1,
            currentIndex: widget.currentIndex,
            onTap: widget.onTap,
          ),
          BottomNavigationIcon(
            icon: Assets.icons.activity,
            text: 'Activity',
            index: 2,
            currentIndex: widget.currentIndex,
            onTap: widget.onTap,
          ),
          BottomNavigationIcon(
            icon: Assets.icons.notifications,
            text: 'Inbox',
            index: 3,
            currentIndex: widget.currentIndex,
            onTap: widget.onTap,
          ),
          BottomNavigationIcon(
            icon: Assets.icons.person,
            text: 'Account',
            index: 4,
            currentIndex: widget.currentIndex,
            onTap: widget.onTap,
          ),
        ],
      ),
    );
  }
}
