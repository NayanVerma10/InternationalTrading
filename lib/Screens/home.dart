import 'package:flutter/material.dart';

import '../Widgets/CustomAppBar.dart' show customAppBar;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBar(context),
    );
  }
}
