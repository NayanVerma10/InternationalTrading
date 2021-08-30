// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopMainScreen extends StatelessWidget {
  const DesktopMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1400),
      child: Column(
        //pageSnapping: false,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 800,
                    child: Text(
                      "Easy Overseas - Connecting buyer and seller",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(height: 1.2),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 800,
                    child: Text(
                      "Find the best way to sell your product overseas. We connect you with buyers from contries you like , help you from frauds. Build your website with us and much more.",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(height: 1.5),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
