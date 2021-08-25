import 'package:flutter/material.dart';

import '../Widgets/AppBar/DesktopAppBar.dart' show desktopAppBar;
import '../Widgets/AppBar/MobileAppBar.dart' show mobileAppBar;
import '../helper/responsive.dart' show Responsive;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Responsive.isMobileView(context)
          ? mobileAppBar(context)
          : desktopAppBar(context),
    );
  }
}
