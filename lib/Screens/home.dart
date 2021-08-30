import 'package:flutter/material.dart';

import '../Widgets/AppBar/DesktopAppBar.dart' show desktopAppBar;
import '../Widgets/AppBar/MobileAppBar.dart' show mobileAppBar;
import '../helper/responsive.dart' show Responsive;
import './MainScreen/DesktopMainScreen.dart';
import 'package:particles_flutter/particles_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: Responsive.isMobileView(context)
          ? mobileAppBar(context)
          : desktopAppBar(context),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CircularParticle(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              numberOfParticles: 200,
              particleColor: Theme.of(context).primaryColor.withOpacity(0.4),
              connectDots: true,
              isRandomColor: false),
          const DesktopMainScreen(),
        ],
      ),
    );
  }
}
