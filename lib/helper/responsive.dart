// ignore_for_file: file_names

import 'package:flutter/material.dart';

const int largeScreenSize = 1200;
const int mediumScreenSize = 768;

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? tablet;
  final Widget? mobile;

  const Responsive({
    Key? key,
    required this.desktop,
    this.tablet,
    this.mobile,
  }) : super(key: key);

  static bool isMobileView(BuildContext context) {
    return MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static bool isTabletView(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width <= largeScreenSize;
  }

  static bool isDesktopView(BuildContext context) {
    return MediaQuery.of(context).size.width > largeScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var maxWidth = constraints.maxWidth;
      if (maxWidth > largeScreenSize) {
        return desktop;
      } else if (maxWidth <= largeScreenSize && maxWidth >= mediumScreenSize) {
        return tablet ?? desktop;
      } else {
        return mobile ?? desktop;
      }
    });
  }
}
