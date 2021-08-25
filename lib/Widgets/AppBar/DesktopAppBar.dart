// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Links.dart';

AppBar desktopAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    title: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset(
            "assets/images/Orange-logo.png",
            width: 100,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Link(text: "Products"),
              SizedBox(width: 60),
              Link(text: "Fright Rate"),
              SizedBox(width: 60),
              Link(text: "Get Started"),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Link(text: "Sign Up"),
            const SizedBox(width: 20),
            ElevatedButton(onPressed: () {}, child: const Text("Register")),
          ],
        ),
      ],
    ),
  );
}
