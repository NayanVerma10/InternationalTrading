// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Links.dart';

AppBar desktopAppBar(BuildContext context) {
  TextStyle linkStyle =
      Theme.of(context).appBarTheme.titleTextStyle ?? const TextStyle();
  return AppBar(
    elevation: 0,
    title: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset(
            "assets/images/Orange-logo.png",
            width: 120,
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Link(
                text: "Products",
                linkStyle: linkStyle,
              ),
              const SizedBox(width: 60),
              Link(
                text: "Fright Rate",
                linkStyle: linkStyle,
              ),
              const SizedBox(width: 60),
              Link(
                text: "Get Started",
                linkStyle: linkStyle,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Link(
              text: "Sign Up",
              linkStyle: linkStyle,
            ),
            const SizedBox(width: 20),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Register",
                  style: linkStyle,
                )),
          ],
        ),
      ],
    ),
  );
}
