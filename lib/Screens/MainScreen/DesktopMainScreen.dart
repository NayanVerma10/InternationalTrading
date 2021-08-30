// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopMainScreen extends StatelessWidget {
  const DesktopMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Container(
      constraints: const BoxConstraints(maxWidth: 1400),
      child: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        //pageSnapping: false,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Easy Overseas",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  "Subtitle",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
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
