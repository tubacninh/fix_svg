import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {
  static const String _imageUrl = 'assets/images';
  static const String _background = 'assets/background';

  // SVG Images
  static const String calendar = '$_imageUrl/calendar.svg';
  static const String gym = '$_imageUrl/gym.svg';
  static const String settings = '$_imageUrl/settings.svg';
  static const String meditationWomenSmall =
      '$_imageUrl/meditation_women_small.svg';
  static const String lock = '$_imageUrl/lock.svg';
  static const String exercises = '$_imageUrl/exercises.svg';
  static const String hamburger = '$_imageUrl/hamburger.svg';
  static const String menu = '$_imageUrl/menu.svg';
  static const String meditationWomen = '$_imageUrl/meditation_women.svg';
  static const String pilatesGpdb = '$_imageUrl/pilates_gpdb.svg';
  static const String search = '$_imageUrl/search.svg';
  static const String yogaWomen = '$_imageUrl/yoga_women.svg';
  static const String yoga = '$_imageUrl/yoga.svg';

  // PNG Images
  static final AssetImage meditationBg =
      AssetImage('$_background/meditation_bg.png');
  static final AssetImage undrawPilateGpdb =
      AssetImage('$_imageUrl/undraw_pilate_gpdb.png');

  // Widgets for SVG Images
  static final Widget lockWidget = SvgPicture.asset(lock);
  static final Widget hamburgerWidget = SvgPicture.asset(hamburger);
  static final Widget menuWidget = SvgPicture.asset(menu);
}
