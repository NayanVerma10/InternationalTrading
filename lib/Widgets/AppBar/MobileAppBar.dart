// ignore_for_file: file_names

import 'package:flutter/material.dart';

AppBar mobileAppBar(BuildContext context) {
  return AppBar(
    leading: const Icon(Icons.menu),
    elevation: 0,
    centerTitle: true,
    title: Image.asset(
      "assets/images/Orange-logo.png",
      width: 100,
    ),
  );
}
