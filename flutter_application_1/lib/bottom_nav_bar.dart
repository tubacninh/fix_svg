import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/constants/constants_color.dart'
    show ConstantsColor;
import 'package:flutter_application_1/constants/constants_app_text_style.dart';
import 'package:flutter_application_1/constants/constants_images.dart';
import 'package:flutter_application_1/constants/constants_text.dart'
    show AppTexts;

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: ConstantsColor.kWhiteColor, // Using constant color for background
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: AppTexts.today,
            svgScr: AppImages.calendar,
            press: () {},
          ),
          BottomNavItem(
            title: AppTexts.allExercises,
            svgScr: AppImages.gym,
            isActive: true,
            press: () {},
          ),
          BottomNavItem(
            title: AppTexts.settings,
            svgScr: AppImages.settings,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgScr;
  final String title;
  final VoidCallback press;
  final bool isActive;

  const BottomNavItem({
    Key? key,
    required this.svgScr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgScr,
            color: isActive
                ? ConstantsColor.kActiveIconColor // Active icon color
                : ConstantsColor.kTextColor, // Default text color
            semanticsLabel: title, // Adding semantic label for accessibility
          ),
          Text(
            title,
            style: TextStyle(
                color: isActive
                    ? ConstantsColor.kActiveIconColor // Active text color
                    : ConstantsColor.kTextColor), // Default text color
          ),
        ],
      ),
    );
  }
}
