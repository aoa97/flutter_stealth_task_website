import 'package:flutter/material.dart';

abstract class SizeConfig {
  static const double mobile = 500;
  static const double tablet = 900;
  static const double largeTablet = 1040;
  static const double dektop = 1300;
  static const double largeDesktop = 1500;

  static T adaptiveValue<T>(
    BuildContext context, {
    required T mobile,
    required T tablet,
    required T largeTablet,
    required T desktop,
    required T largeDesktop,
  }) {
    final maxWidth = MediaQuery.of(context).size.width;
    if (maxWidth < SizeConfig.mobile) return mobile;
    if (maxWidth < SizeConfig.tablet) return tablet;
    if (maxWidth < SizeConfig.largeTablet) return largeTablet;
    if (maxWidth < SizeConfig.dektop) return desktop;
    if (maxWidth < SizeConfig.largeDesktop) return largeDesktop;
    return largeDesktop;
  }
}
